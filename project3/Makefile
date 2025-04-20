	
# Thư mục
SRC_DIR := Src
INC_DIR := Inc
MAIN_DIR := main
BUILD_DIR := build

# Danh sách file nguồn
SRCS := $(MAIN_DIR)/main.c $(SRC_DIR)/file1.c $(SRC_DIR)/file2.c

# Tạo danh sách file .o tương ứng trong thư mục build/
OBJS := $(patsubst %.c, $(BUILD_DIR)/%.o, $(notdir $(SRCS)))

# Compiler
CC := gcc
CFLAGS := -Wall -O2 -I$(INC_DIR)

# Tên chương trình
TARGET := app

.PHONY: all clean

# Rule chính
all: $(TARGET)

# Link các object lại thành executable
$(TARGET): $(OBJS)
	$(CC) $^ -o $@

# Tạo thư mục build nếu chưa có
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Rule compile từ main/
$(BUILD_DIR)/%.o: $(MAIN_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Rule compile từ Src/
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Dọn dẹp
clean:
	rm -rf $(BUILD_DIR)/*.o $(TARGET)
