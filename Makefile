include config/make-locations
include config/make-cc
include config/make-os

$(info "...........starting..........") 
# $(warning "warning级别打印") 
# $(error "error级别打印") 

# INCLUDE 参数
INCLUDE := $(patsubst %, -I %, $(INCLUDES_DIR))
$(info INCLUDE=${INCLUDE}) 
# .S .c 两种源文件列表
SRC_FILES := $(shell find -name "*.[cS]")
$(info SRC_FILES=${SRC_FILES}) 
# .o 文件列表
OBJ_FILES := $(patsubst ./%.c, $(OBJECT_DIR)/%.o, $(SRC_FILES))
OBJ_FILES := $(patsubst ./%.S, $(OBJECT_DIR)/%.o, $(OBJ_FILES))
$(info OBJ_FILES=${OBJ_FILES}) 


all:clean $(BIN_DIR)/$(OS_BIN)
	@echo ".........all........"

$(OBJECT_DIR):
	@mkdir -p $(OBJECT_DIR)

$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

$(ISO_DIR):
	@mkdir -p $(ISO_DIR)
	@mkdir -p $(ISO_BOOT_DIR)
	@mkdir -p $(ISO_GRUB_DIR)

$(OBJECT_DIR)/%.o: %.S
	@mkdir -p $(@D)
	@echo "  CC    $<"
	@$(CC) $(INCLUDE) -c $< -o $@

$(OBJECT_DIR)/%.o: %.c 
	@mkdir -p $(@D)
	@echo "  CC    $<"
	@$(CC) $(INCLUDE) -c $< -o $@ $(CFLAGS)

$(BIN_DIR)/$(OS_BIN): $(OBJECT_DIR) $(BIN_DIR) $(OBJ_FILES)
	@echo "  LD    $(BIN_DIR)/$(OS_BIN)"
	@$(CC) -T link/linker.ld -o $(BIN_DIR)/$(OS_BIN) $(OBJ_FILES) $(LDFLAGS)

clean:
	@echo .....clean BUILD_DIR......
	@rm -rf $(BUILD_DIR) || exit 1

