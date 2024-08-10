LOG     = echo
QUIET   = @
TARGET  = bool

ASM     = hatasm
AFLAGS  = -a --arch aarch64 -f macho

.PHONY: all build clean

build: $(TARGET)

clean:
	$(QUIET) $(LOG) [Cleaning]
	$(QUIET) rm -rf $(TARGET)
	$(QUIET) $(LOG) [Done cleaning]

$(TARGET): bool.S
	$(QUIET) $(LOG) [Compiling $<]
	$(ASM) $(AFLAGS) -i $< -o $@
	$(QUIET) $(LOG) [Done compiling]
