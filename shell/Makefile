LOG     = echo
QUIET   = @
TARGET  = shell

ASM     = hatasm
AFLAGS  = -a --arch aarch64 -f macho

.PHONY: all build clean

build: $(TARGET)

clean:
	$(QUIET) $(LOG) [Cleaning]
	$(QUIET) rm -rf $(OBJECTS) $(BUILD) $(LIBRARY)
	$(QUIET) $(LOG) [Done cleaning]

$(TARGET): shell.S
	$(QUIET) $(LOG) [Compiling $<]
	$(ASM) $(AFLAGS) -i $< -o $@
	$(QUIET) $(LOG) [Done compiling]
