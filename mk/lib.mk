include ${BOITHOHOME}/mk/setup.mk
include ${BOITHOHOME}/mk/cc.mk
include ${BOITHOHOME}/mk/objdir.mk

all: objdir $(LIB)

OBJLIB=	${OBJDIR}/${LIB}

$(OBJLIB): $(addprefix $(OBJDIR)/, $(OBJS))
	ar cr $(OBJLIB) $^
	ranlib $(OBJLIB)

$(OBJDIR)/%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

$(LIB): $(OBJLIB)
	cp $(OBJLIB) ${LIBDIR}/${LIB}


clean:
	rm -f $(OBJDIR)/$(OBJLIB) $(addprefix $(OBJDIR)/, $(OBJS))

.PHONY: clean