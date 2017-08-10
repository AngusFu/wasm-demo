(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (result i32)))
  (func $.memset (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i64)
    block (result i32)  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        get_local 2
        i32.add
        tee_local 3
        i32.const -1
        i32.add
        get_local 1
        i32.store8
        get_local 0
        get_local 1
        i32.store8
        get_local 2
        i32.const 3
        i32.lt_u
        br_if 0 (;@2;)
        get_local 3
        i32.const -2
        i32.add
        get_local 1
        i32.store8
        get_local 0
        get_local 1
        i32.store8 offset=1
        get_local 3
        i32.const -3
        i32.add
        get_local 1
        i32.store8
        get_local 0
        get_local 1
        i32.store8 offset=2
        get_local 2
        i32.const 7
        i32.lt_u
        br_if 0 (;@2;)
        get_local 3
        i32.const -4
        i32.add
        get_local 1
        i32.store8
        get_local 0
        get_local 1
        i32.store8 offset=3
        get_local 2
        i32.const 9
        i32.lt_u
        br_if 0 (;@2;)
        get_local 0
        i32.const 0
        get_local 0
        i32.sub
        i32.const 3
        i32.and
        tee_local 4
        i32.add
        tee_local 3
        get_local 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        tee_local 1
        i32.store
        get_local 3
        get_local 2
        get_local 4
        i32.sub
        i32.const -4
        i32.and
        tee_local 4
        i32.add
        tee_local 2
        i32.const -4
        i32.add
        get_local 1
        i32.store
        get_local 4
        i32.const 9
        i32.lt_u
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.store offset=8
        get_local 3
        get_local 1
        i32.store offset=4
        get_local 2
        i32.const -8
        i32.add
        get_local 1
        i32.store
        get_local 2
        i32.const -12
        i32.add
        get_local 1
        i32.store
        get_local 4
        i32.const 25
        i32.lt_u
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.store offset=16
        get_local 3
        get_local 1
        i32.store offset=12
        get_local 3
        get_local 1
        i32.store offset=20
        get_local 3
        get_local 1
        i32.store offset=24
        get_local 2
        i32.const -24
        i32.add
        get_local 1
        i32.store
        get_local 2
        i32.const -28
        i32.add
        get_local 1
        i32.store
        get_local 2
        i32.const -20
        i32.add
        get_local 1
        i32.store
        get_local 2
        i32.const -16
        i32.add
        get_local 1
        i32.store
        get_local 1
        i64.extend_u/i32
        tee_local 5
        i64.const 32
        i64.shl
        get_local 5
        i64.or
        set_local 5
        get_local 4
        get_local 3
        i32.const 4
        i32.and
        i32.const 24
        i32.or
        tee_local 1
        i32.sub
        set_local 2
        get_local 3
        get_local 1
        i32.add
        set_local 1
        loop  ;; label = @3
          get_local 2
          i32.const 32
          i32.lt_u
          br_if 1 (;@2;)
          get_local 1
          get_local 5
          i64.store
          get_local 1
          i32.const 8
          i32.add
          get_local 5
          i64.store
          get_local 1
          i32.const 16
          i32.add
          get_local 5
          i64.store
          get_local 1
          i32.const 24
          i32.add
          get_local 5
          i64.store
          get_local 1
          i32.const 32
          i32.add
          set_local 1
          get_local 2
          i32.const -32
          i32.add
          set_local 2
          br 0 (;@3;)
        end
        unreachable
      end
      get_local 0
    end)
  (func $.init_mparams (type 2)
    (local i32)
    block  ;; label = @1
      i32.const 12
      i32.load
      if  ;; label = @2
        return
      end
      i32.const 4
      i32.load
      i32.const 16
      i32.sub
      set_local 0
      i32.const 16
      i64.const 281474976776192
      i64.store align=4
      i32.const 24
      i64.const -1
      i64.store align=4
      i32.const 12
      get_local 0
      i32.const 12
      i32.add
      i32.const -16
      i32.and
      i32.const 1431655768
      i32.xor
      i32.store
      i32.const 32
      i32.const 0
      i32.store
    end)
  (func $.mspace_malloc (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block (result i32)  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        get_local 1
                                                                                        i32.const 244
                                                                                        i32.le_u
                                                                                        if  ;; label = @43
                                                                                          get_local 0
                                                                                          i32.load
                                                                                          tee_local 4
                                                                                          i32.const 16
                                                                                          get_local 1
                                                                                          i32.const 11
                                                                                          i32.add
                                                                                          i32.const -8
                                                                                          i32.and
                                                                                          get_local 1
                                                                                          i32.const 11
                                                                                          i32.lt_u
                                                                                          select
                                                                                          tee_local 5
                                                                                          i32.const 3
                                                                                          i32.shr_u
                                                                                          tee_local 2
                                                                                          i32.shr_u
                                                                                          tee_local 1
                                                                                          i32.const 3
                                                                                          i32.and
                                                                                          i32.eqz
                                                                                          br_if 1 (;@42;)
                                                                                          get_local 0
                                                                                          get_local 1
                                                                                          i32.const -1
                                                                                          i32.xor
                                                                                          i32.const 1
                                                                                          i32.and
                                                                                          get_local 2
                                                                                          i32.add
                                                                                          tee_local 2
                                                                                          i32.const 3
                                                                                          i32.shl
                                                                                          i32.add
                                                                                          tee_local 3
                                                                                          i32.const 48
                                                                                          i32.add
                                                                                          i32.load
                                                                                          tee_local 1
                                                                                          i32.const 8
                                                                                          i32.add
                                                                                          set_local 6
                                                                                          get_local 1
                                                                                          i32.load offset=8
                                                                                          tee_local 5
                                                                                          get_local 3
                                                                                          i32.const 40
                                                                                          i32.add
                                                                                          tee_local 3
                                                                                          i32.eq
                                                                                          br_if 2 (;@41;)
                                                                                          get_local 5
                                                                                          get_local 3
                                                                                          i32.store offset=12
                                                                                          get_local 3
                                                                                          i32.const 8
                                                                                          i32.add
                                                                                          get_local 5
                                                                                          i32.store
                                                                                          br 3 (;@40;)
                                                                                        end
                                                                                        i32.const -1
                                                                                        set_local 5
                                                                                        get_local 1
                                                                                        i32.const -65
                                                                                        i32.gt_u
                                                                                        br_if 9 (;@33;)
                                                                                        get_local 1
                                                                                        i32.const 11
                                                                                        i32.add
                                                                                        tee_local 1
                                                                                        i32.const -8
                                                                                        i32.and
                                                                                        set_local 5
                                                                                        get_local 0
                                                                                        i32.load offset=4
                                                                                        tee_local 9
                                                                                        i32.eqz
                                                                                        br_if 9 (;@33;)
                                                                                        i32.const 0
                                                                                        set_local 4
                                                                                        block (result i32)  ;; label = @43
                                                                                          i32.const 0
                                                                                          get_local 1
                                                                                          i32.const 8
                                                                                          i32.shr_u
                                                                                          tee_local 1
                                                                                          i32.eqz
                                                                                          br_if 0 (;@43;)
                                                                                          drop
                                                                                          i32.const 31
                                                                                          get_local 5
                                                                                          i32.const 16777215
                                                                                          i32.gt_u
                                                                                          br_if 0 (;@43;)
                                                                                          drop
                                                                                          get_local 5
                                                                                          i32.const 14
                                                                                          get_local 1
                                                                                          get_local 1
                                                                                          i32.const 1048320
                                                                                          i32.add
                                                                                          i32.const 16
                                                                                          i32.shr_u
                                                                                          i32.const 8
                                                                                          i32.and
                                                                                          tee_local 2
                                                                                          i32.shl
                                                                                          tee_local 1
                                                                                          i32.const 520192
                                                                                          i32.add
                                                                                          i32.const 16
                                                                                          i32.shr_u
                                                                                          i32.const 4
                                                                                          i32.and
                                                                                          tee_local 3
                                                                                          get_local 2
                                                                                          i32.or
                                                                                          get_local 1
                                                                                          get_local 3
                                                                                          i32.shl
                                                                                          tee_local 1
                                                                                          i32.const 245760
                                                                                          i32.add
                                                                                          i32.const 16
                                                                                          i32.shr_u
                                                                                          i32.const 2
                                                                                          i32.and
                                                                                          tee_local 2
                                                                                          i32.or
                                                                                          i32.sub
                                                                                          get_local 1
                                                                                          get_local 2
                                                                                          i32.shl
                                                                                          i32.const 15
                                                                                          i32.shr_u
                                                                                          i32.add
                                                                                          tee_local 1
                                                                                          i32.const 7
                                                                                          i32.add
                                                                                          i32.shr_u
                                                                                          i32.const 1
                                                                                          i32.and
                                                                                          get_local 1
                                                                                          i32.const 1
                                                                                          i32.shl
                                                                                          i32.or
                                                                                        end
                                                                                        set_local 7
                                                                                        i32.const 0
                                                                                        get_local 5
                                                                                        i32.sub
                                                                                        set_local 2
                                                                                        get_local 0
                                                                                        get_local 7
                                                                                        i32.const 2
                                                                                        i32.shl
                                                                                        i32.add
                                                                                        i32.const 304
                                                                                        i32.add
                                                                                        i32.load
                                                                                        tee_local 1
                                                                                        i32.eqz
                                                                                        br_if 3 (;@39;)
                                                                                        get_local 5
                                                                                        i32.const 0
                                                                                        i32.const 25
                                                                                        get_local 7
                                                                                        i32.const 1
                                                                                        i32.shr_u
                                                                                        i32.sub
                                                                                        get_local 7
                                                                                        i32.const 31
                                                                                        i32.eq
                                                                                        select
                                                                                        i32.shl
                                                                                        set_local 6
                                                                                        i32.const 0
                                                                                        set_local 4
                                                                                        i32.const 0
                                                                                        set_local 3
                                                                                        loop  ;; label = @43
                                                                                          get_local 1
                                                                                          i32.load offset=4
                                                                                          i32.const -8
                                                                                          i32.and
                                                                                          get_local 5
                                                                                          i32.sub
                                                                                          tee_local 8
                                                                                          get_local 2
                                                                                          i32.lt_u
                                                                                          if  ;; label = @44
                                                                                            get_local 8
                                                                                            set_local 2
                                                                                            get_local 1
                                                                                            set_local 3
                                                                                            get_local 8
                                                                                            i32.eqz
                                                                                            br_if 8 (;@36;)
                                                                                          end
                                                                                          get_local 4
                                                                                          get_local 1
                                                                                          i32.const 20
                                                                                          i32.add
                                                                                          i32.load
                                                                                          tee_local 8
                                                                                          get_local 8
                                                                                          get_local 1
                                                                                          get_local 6
                                                                                          i32.const 29
                                                                                          i32.shr_u
                                                                                          i32.const 4
                                                                                          i32.and
                                                                                          i32.add
                                                                                          i32.const 16
                                                                                          i32.add
                                                                                          i32.load
                                                                                          tee_local 1
                                                                                          i32.eq
                                                                                          select
                                                                                          get_local 4
                                                                                          get_local 8
                                                                                          select
                                                                                          set_local 4
                                                                                          get_local 6
                                                                                          get_local 1
                                                                                          i32.const 0
                                                                                          i32.ne
                                                                                          i32.shl
                                                                                          set_local 6
                                                                                          get_local 1
                                                                                          br_if 0 (;@43;)
                                                                                          br 5 (;@38;)
                                                                                        end
                                                                                        unreachable
                                                                                      end
                                                                                      get_local 5
                                                                                      get_local 0
                                                                                      i32.load offset=8
                                                                                      tee_local 3
                                                                                      i32.le_u
                                                                                      br_if 8 (;@33;)
                                                                                      get_local 1
                                                                                      i32.eqz
                                                                                      br_if 4 (;@37;)
                                                                                      get_local 0
                                                                                      i32.const 40
                                                                                      i32.add
                                                                                      tee_local 7
                                                                                      get_local 1
                                                                                      get_local 2
                                                                                      i32.shl
                                                                                      i32.const 2
                                                                                      get_local 2
                                                                                      i32.shl
                                                                                      tee_local 1
                                                                                      i32.const 0
                                                                                      get_local 1
                                                                                      i32.sub
                                                                                      i32.or
                                                                                      i32.and
                                                                                      tee_local 1
                                                                                      i32.const 0
                                                                                      get_local 1
                                                                                      i32.sub
                                                                                      i32.and
                                                                                      i32.const -1
                                                                                      i32.add
                                                                                      tee_local 1
                                                                                      get_local 1
                                                                                      i32.const 12
                                                                                      i32.shr_u
                                                                                      i32.const 16
                                                                                      i32.and
                                                                                      tee_local 1
                                                                                      i32.shr_u
                                                                                      tee_local 2
                                                                                      i32.const 5
                                                                                      i32.shr_u
                                                                                      i32.const 8
                                                                                      i32.and
                                                                                      tee_local 6
                                                                                      get_local 1
                                                                                      i32.or
                                                                                      get_local 2
                                                                                      get_local 6
                                                                                      i32.shr_u
                                                                                      tee_local 1
                                                                                      i32.const 2
                                                                                      i32.shr_u
                                                                                      i32.const 4
                                                                                      i32.and
                                                                                      tee_local 2
                                                                                      i32.or
                                                                                      get_local 1
                                                                                      get_local 2
                                                                                      i32.shr_u
                                                                                      tee_local 1
                                                                                      i32.const 1
                                                                                      i32.shr_u
                                                                                      i32.const 2
                                                                                      i32.and
                                                                                      tee_local 2
                                                                                      i32.or
                                                                                      get_local 1
                                                                                      get_local 2
                                                                                      i32.shr_u
                                                                                      tee_local 1
                                                                                      i32.const 1
                                                                                      i32.shr_u
                                                                                      i32.const 1
                                                                                      i32.and
                                                                                      tee_local 2
                                                                                      i32.or
                                                                                      get_local 1
                                                                                      get_local 2
                                                                                      i32.shr_u
                                                                                      i32.add
                                                                                      tee_local 6
                                                                                      i32.const 3
                                                                                      i32.shl
                                                                                      i32.add
                                                                                      tee_local 2
                                                                                      i32.load offset=8
                                                                                      tee_local 1
                                                                                      i32.load offset=8
                                                                                      tee_local 8
                                                                                      get_local 2
                                                                                      i32.eq
                                                                                      br_if 9 (;@32;)
                                                                                      get_local 2
                                                                                      i32.const 8
                                                                                      i32.add
                                                                                      get_local 8
                                                                                      i32.store
                                                                                      get_local 8
                                                                                      get_local 2
                                                                                      i32.store offset=12
                                                                                      get_local 0
                                                                                      i32.const 8
                                                                                      i32.add
                                                                                      i32.load
                                                                                      set_local 3
                                                                                      br 10 (;@31;)
                                                                                    end
                                                                                    get_local 0
                                                                                    get_local 4
                                                                                    i32.const -2
                                                                                    get_local 2
                                                                                    i32.rotl
                                                                                    i32.and
                                                                                    i32.store
                                                                                  end
                                                                                  get_local 1
                                                                                  get_local 2
                                                                                  i32.const 3
                                                                                  i32.shl
                                                                                  tee_local 2
                                                                                  i32.const 3
                                                                                  i32.or
                                                                                  i32.store offset=4
                                                                                  get_local 1
                                                                                  get_local 2
                                                                                  i32.add
                                                                                  tee_local 1
                                                                                  get_local 1
                                                                                  i32.load offset=4
                                                                                  i32.const 1
                                                                                  i32.or
                                                                                  i32.store offset=4
                                                                                  get_local 6
                                                                                  return
                                                                                end
                                                                                i32.const 0
                                                                                set_local 3
                                                                              end
                                                                              get_local 4
                                                                              get_local 3
                                                                              i32.or
                                                                              i32.eqz
                                                                              if  ;; label = @38
                                                                                i32.const 0
                                                                                set_local 1
                                                                                get_local 9
                                                                                i32.const 2
                                                                                get_local 7
                                                                                i32.shl
                                                                                tee_local 3
                                                                                i32.const 0
                                                                                get_local 3
                                                                                i32.sub
                                                                                i32.or
                                                                                i32.and
                                                                                tee_local 4
                                                                                i32.eqz
                                                                                br_if 3 (;@35;)
                                                                                i32.const 0
                                                                                set_local 3
                                                                                get_local 0
                                                                                get_local 4
                                                                                i32.const 0
                                                                                get_local 4
                                                                                i32.sub
                                                                                i32.and
                                                                                i32.const -1
                                                                                i32.add
                                                                                tee_local 1
                                                                                get_local 1
                                                                                i32.const 12
                                                                                i32.shr_u
                                                                                i32.const 16
                                                                                i32.and
                                                                                tee_local 1
                                                                                i32.shr_u
                                                                                tee_local 4
                                                                                i32.const 5
                                                                                i32.shr_u
                                                                                i32.const 8
                                                                                i32.and
                                                                                tee_local 6
                                                                                get_local 1
                                                                                i32.or
                                                                                get_local 4
                                                                                get_local 6
                                                                                i32.shr_u
                                                                                tee_local 1
                                                                                i32.const 2
                                                                                i32.shr_u
                                                                                i32.const 4
                                                                                i32.and
                                                                                tee_local 4
                                                                                i32.or
                                                                                get_local 1
                                                                                get_local 4
                                                                                i32.shr_u
                                                                                tee_local 1
                                                                                i32.const 1
                                                                                i32.shr_u
                                                                                i32.const 2
                                                                                i32.and
                                                                                tee_local 4
                                                                                i32.or
                                                                                get_local 1
                                                                                get_local 4
                                                                                i32.shr_u
                                                                                tee_local 1
                                                                                i32.const 1
                                                                                i32.shr_u
                                                                                i32.const 1
                                                                                i32.and
                                                                                tee_local 4
                                                                                i32.or
                                                                                get_local 1
                                                                                get_local 4
                                                                                i32.shr_u
                                                                                i32.add
                                                                                i32.const 2
                                                                                i32.shl
                                                                                i32.add
                                                                                i32.const 304
                                                                                i32.add
                                                                                i32.load
                                                                                set_local 1
                                                                                br 4 (;@34;)
                                                                              end
                                                                              get_local 4
                                                                              set_local 1
                                                                              br 3 (;@34;)
                                                                            end
                                                                            get_local 0
                                                                            i32.load offset=4
                                                                            tee_local 1
                                                                            i32.eqz
                                                                            br_if 3 (;@33;)
                                                                            get_local 0
                                                                            get_local 1
                                                                            i32.const 0
                                                                            get_local 1
                                                                            i32.sub
                                                                            i32.and
                                                                            i32.const -1
                                                                            i32.add
                                                                            tee_local 1
                                                                            get_local 1
                                                                            i32.const 12
                                                                            i32.shr_u
                                                                            i32.const 16
                                                                            i32.and
                                                                            tee_local 1
                                                                            i32.shr_u
                                                                            tee_local 2
                                                                            i32.const 5
                                                                            i32.shr_u
                                                                            i32.const 8
                                                                            i32.and
                                                                            tee_local 3
                                                                            get_local 1
                                                                            i32.or
                                                                            get_local 2
                                                                            get_local 3
                                                                            i32.shr_u
                                                                            tee_local 1
                                                                            i32.const 2
                                                                            i32.shr_u
                                                                            i32.const 4
                                                                            i32.and
                                                                            tee_local 2
                                                                            i32.or
                                                                            get_local 1
                                                                            get_local 2
                                                                            i32.shr_u
                                                                            tee_local 1
                                                                            i32.const 1
                                                                            i32.shr_u
                                                                            i32.const 2
                                                                            i32.and
                                                                            tee_local 2
                                                                            i32.or
                                                                            get_local 1
                                                                            get_local 2
                                                                            i32.shr_u
                                                                            tee_local 1
                                                                            i32.const 1
                                                                            i32.shr_u
                                                                            i32.const 1
                                                                            i32.and
                                                                            tee_local 2
                                                                            i32.or
                                                                            get_local 1
                                                                            get_local 2
                                                                            i32.shr_u
                                                                            i32.add
                                                                            i32.const 2
                                                                            i32.shl
                                                                            i32.add
                                                                            i32.const 304
                                                                            i32.add
                                                                            i32.load
                                                                            tee_local 3
                                                                            i32.load offset=4
                                                                            i32.const -8
                                                                            i32.and
                                                                            get_local 5
                                                                            i32.sub
                                                                            set_local 2
                                                                            get_local 3
                                                                            set_local 1
                                                                            block  ;; label = @37
                                                                              loop  ;; label = @38
                                                                                get_local 1
                                                                                i32.const 16
                                                                                i32.add
                                                                                get_local 1
                                                                                i32.load offset=16
                                                                                i32.eqz
                                                                                i32.const 2
                                                                                i32.shl
                                                                                i32.add
                                                                                i32.load
                                                                                tee_local 1
                                                                                i32.eqz
                                                                                br_if 1 (;@37;)
                                                                                get_local 1
                                                                                i32.load offset=4
                                                                                i32.const -8
                                                                                i32.and
                                                                                get_local 5
                                                                                i32.sub
                                                                                tee_local 4
                                                                                get_local 2
                                                                                get_local 4
                                                                                get_local 2
                                                                                i32.lt_u
                                                                                tee_local 4
                                                                                select
                                                                                set_local 2
                                                                                get_local 1
                                                                                get_local 3
                                                                                get_local 4
                                                                                select
                                                                                set_local 3
                                                                                br 0 (;@38;)
                                                                              end
                                                                              unreachable
                                                                            end
                                                                            get_local 3
                                                                            get_local 5
                                                                            i32.add
                                                                            tee_local 9
                                                                            get_local 3
                                                                            i32.le_u
                                                                            br_if 3 (;@33;)
                                                                            get_local 3
                                                                            i32.load offset=24
                                                                            set_local 7
                                                                            get_local 3
                                                                            i32.load offset=12
                                                                            tee_local 6
                                                                            get_local 3
                                                                            i32.eq
                                                                            br_if 12 (;@24;)
                                                                            get_local 3
                                                                            i32.load offset=8
                                                                            tee_local 1
                                                                            get_local 6
                                                                            i32.store offset=12
                                                                            get_local 6
                                                                            get_local 1
                                                                            i32.store offset=8
                                                                            get_local 7
                                                                            br_if 31 (;@5;)
                                                                            br 32 (;@4;)
                                                                          end
                                                                          i32.const 0
                                                                          set_local 2
                                                                          get_local 1
                                                                          set_local 3
                                                                          br 1 (;@34;)
                                                                        end
                                                                        i32.const 0
                                                                        set_local 3
                                                                      end
                                                                      block  ;; label = @34
                                                                        loop  ;; label = @35
                                                                          get_local 1
                                                                          i32.eqz
                                                                          br_if 1 (;@34;)
                                                                          get_local 1
                                                                          i32.load offset=4
                                                                          i32.const -8
                                                                          i32.and
                                                                          get_local 5
                                                                          i32.sub
                                                                          tee_local 4
                                                                          get_local 2
                                                                          get_local 4
                                                                          get_local 2
                                                                          i32.lt_u
                                                                          tee_local 4
                                                                          select
                                                                          set_local 2
                                                                          get_local 1
                                                                          get_local 3
                                                                          get_local 4
                                                                          select
                                                                          set_local 3
                                                                          get_local 1
                                                                          i32.const 16
                                                                          i32.add
                                                                          get_local 1
                                                                          i32.load offset=16
                                                                          i32.eqz
                                                                          i32.const 2
                                                                          i32.shl
                                                                          i32.add
                                                                          i32.load
                                                                          set_local 1
                                                                          br 0 (;@35;)
                                                                        end
                                                                        unreachable
                                                                      end
                                                                      get_local 3
                                                                      i32.eqz
                                                                      get_local 2
                                                                      get_local 0
                                                                      i32.load offset=8
                                                                      get_local 5
                                                                      i32.sub
                                                                      i32.ge_u
                                                                      i32.or
                                                                      br_if 0 (;@33;)
                                                                      get_local 3
                                                                      get_local 5
                                                                      i32.add
                                                                      tee_local 7
                                                                      get_local 3
                                                                      i32.le_u
                                                                      br_if 22 (;@11;)
                                                                      get_local 3
                                                                      i32.load offset=24
                                                                      set_local 9
                                                                      get_local 3
                                                                      i32.load offset=12
                                                                      tee_local 6
                                                                      get_local 3
                                                                      i32.eq
                                                                      br_if 3 (;@30;)
                                                                      get_local 3
                                                                      i32.load offset=8
                                                                      tee_local 1
                                                                      get_local 6
                                                                      i32.store offset=12
                                                                      get_local 6
                                                                      get_local 1
                                                                      i32.store offset=8
                                                                      get_local 9
                                                                      br_if 30 (;@3;)
                                                                      br 31 (;@2;)
                                                                    end
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          get_local 0
                                                                          i32.load offset=8
                                                                          tee_local 1
                                                                          get_local 5
                                                                          i32.lt_u
                                                                          if  ;; label = @36
                                                                            get_local 0
                                                                            i32.load offset=12
                                                                            tee_local 1
                                                                            get_local 5
                                                                            i32.le_u
                                                                            br_if 1 (;@35;)
                                                                            get_local 0
                                                                            i32.load offset=24
                                                                            tee_local 2
                                                                            get_local 5
                                                                            i32.add
                                                                            tee_local 3
                                                                            get_local 1
                                                                            get_local 5
                                                                            i32.sub
                                                                            tee_local 1
                                                                            i32.const 1
                                                                            i32.or
                                                                            i32.store offset=4
                                                                            get_local 0
                                                                            i32.const 12
                                                                            i32.add
                                                                            get_local 1
                                                                            i32.store
                                                                            get_local 0
                                                                            get_local 3
                                                                            i32.store offset=24
                                                                            get_local 2
                                                                            get_local 5
                                                                            i32.const 3
                                                                            i32.or
                                                                            i32.store offset=4
                                                                            get_local 2
                                                                            i32.const 8
                                                                            i32.add
                                                                            return
                                                                          end
                                                                          get_local 0
                                                                          i32.load offset=20
                                                                          set_local 2
                                                                          get_local 1
                                                                          get_local 5
                                                                          i32.sub
                                                                          tee_local 3
                                                                          i32.const 16
                                                                          i32.lt_u
                                                                          br_if 1 (;@34;)
                                                                          get_local 2
                                                                          get_local 5
                                                                          i32.add
                                                                          tee_local 4
                                                                          get_local 3
                                                                          i32.const 1
                                                                          i32.or
                                                                          i32.store offset=4
                                                                          get_local 2
                                                                          get_local 1
                                                                          i32.add
                                                                          get_local 3
                                                                          i32.store
                                                                          get_local 0
                                                                          i32.const 8
                                                                          i32.add
                                                                          get_local 3
                                                                          i32.store
                                                                          get_local 0
                                                                          i32.const 20
                                                                          i32.add
                                                                          get_local 4
                                                                          i32.store
                                                                          get_local 2
                                                                          get_local 5
                                                                          i32.const 3
                                                                          i32.or
                                                                          i32.store offset=4
                                                                          br 2 (;@33;)
                                                                        end
                                                                        i32.const 0
                                                                        set_local 6
                                                                        i32.const 12
                                                                        i32.load
                                                                        i32.eqz
                                                                        if  ;; label = @35
                                                                          call $.init_mparams
                                                                        end
                                                                        i32.const 20
                                                                        i32.load
                                                                        tee_local 1
                                                                        get_local 5
                                                                        i32.const 47
                                                                        i32.add
                                                                        tee_local 4
                                                                        i32.add
                                                                        tee_local 2
                                                                        i32.const 0
                                                                        get_local 1
                                                                        i32.sub
                                                                        tee_local 3
                                                                        i32.and
                                                                        tee_local 1
                                                                        get_local 5
                                                                        i32.le_u
                                                                        br_if 18 (;@16;)
                                                                        get_local 0
                                                                        i32.load offset=440
                                                                        tee_local 7
                                                                        if  ;; label = @35
                                                                          get_local 0
                                                                          i32.load offset=432
                                                                          tee_local 8
                                                                          get_local 1
                                                                          i32.add
                                                                          tee_local 9
                                                                          get_local 8
                                                                          i32.le_u
                                                                          get_local 9
                                                                          get_local 7
                                                                          i32.gt_u
                                                                          i32.or
                                                                          br_if 19 (;@16;)
                                                                        end
                                                                        get_local 0
                                                                        i32.const 444
                                                                        i32.add
                                                                        i32.load8_u
                                                                        i32.const 4
                                                                        i32.and
                                                                        br_if 16 (;@18;)
                                                                        get_local 0
                                                                        i32.load offset=24
                                                                        tee_local 8
                                                                        i32.eqz
                                                                        br_if 5 (;@29;)
                                                                        get_local 0
                                                                        get_local 8
                                                                        call $.segment_holding
                                                                        tee_local 9
                                                                        i32.eqz
                                                                        br_if 5 (;@29;)
                                                                        get_local 2
                                                                        get_local 0
                                                                        i32.const 12
                                                                        i32.add
                                                                        i32.load
                                                                        i32.sub
                                                                        get_local 3
                                                                        i32.and
                                                                        tee_local 8
                                                                        i32.const 2147483646
                                                                        i32.gt_u
                                                                        br_if 15 (;@19;)
                                                                        get_local 8
                                                                        call $.morecore
                                                                        tee_local 3
                                                                        get_local 9
                                                                        i32.load
                                                                        get_local 9
                                                                        i32.load offset=4
                                                                        i32.add
                                                                        i32.ne
                                                                        br_if 6 (;@28;)
                                                                        get_local 3
                                                                        i32.const -1
                                                                        i32.ne
                                                                        br_if 17 (;@17;)
                                                                        br 15 (;@19;)
                                                                      end
                                                                      get_local 2
                                                                      get_local 1
                                                                      i32.const 3
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      get_local 0
                                                                      i32.const 20
                                                                      i32.add
                                                                      i32.const 0
                                                                      i32.store
                                                                      get_local 0
                                                                      i32.const 8
                                                                      i32.add
                                                                      i32.const 0
                                                                      i32.store
                                                                      get_local 2
                                                                      get_local 1
                                                                      i32.add
                                                                      tee_local 1
                                                                      get_local 1
                                                                      i32.load offset=4
                                                                      i32.const 1
                                                                      i32.or
                                                                      i32.store offset=4
                                                                    end
                                                                    get_local 2
                                                                    i32.const 8
                                                                    i32.add
                                                                    return
                                                                  end
                                                                  get_local 0
                                                                  get_local 4
                                                                  i32.const -2
                                                                  get_local 6
                                                                  i32.rotl
                                                                  i32.and
                                                                  i32.store
                                                                end
                                                                get_local 1
                                                                i32.const 8
                                                                i32.add
                                                                set_local 4
                                                                get_local 1
                                                                get_local 5
                                                                i32.const 3
                                                                i32.or
                                                                i32.store offset=4
                                                                get_local 1
                                                                get_local 5
                                                                i32.add
                                                                tee_local 8
                                                                get_local 6
                                                                i32.const 3
                                                                i32.shl
                                                                tee_local 6
                                                                get_local 5
                                                                i32.sub
                                                                tee_local 2
                                                                i32.const 1
                                                                i32.or
                                                                i32.store offset=4
                                                                get_local 1
                                                                get_local 6
                                                                i32.add
                                                                get_local 2
                                                                i32.store
                                                                get_local 3
                                                                i32.eqz
                                                                br_if 5 (;@25;)
                                                                get_local 7
                                                                get_local 3
                                                                i32.const 3
                                                                i32.shr_u
                                                                tee_local 3
                                                                i32.const 3
                                                                i32.shl
                                                                i32.add
                                                                set_local 5
                                                                get_local 0
                                                                i32.const 20
                                                                i32.add
                                                                i32.load
                                                                set_local 1
                                                                get_local 0
                                                                i32.load
                                                                tee_local 6
                                                                i32.const 1
                                                                get_local 3
                                                                i32.shl
                                                                tee_local 3
                                                                i32.and
                                                                i32.eqz
                                                                br_if 3 (;@27;)
                                                                get_local 5
                                                                i32.load offset=8
                                                                br 4 (;@26;)
                                                              end
                                                              get_local 3
                                                              i32.const 20
                                                              i32.add
                                                              tee_local 4
                                                              i32.load
                                                              tee_local 1
                                                              i32.eqz
                                                              if  ;; label = @30
                                                                get_local 3
                                                                i32.load offset=16
                                                                tee_local 1
                                                                i32.eqz
                                                                br_if 8 (;@22;)
                                                                get_local 3
                                                                i32.const 16
                                                                i32.add
                                                                set_local 4
                                                              end
                                                              loop  ;; label = @30
                                                                get_local 4
                                                                set_local 8
                                                                get_local 1
                                                                tee_local 6
                                                                i32.const 20
                                                                i32.add
                                                                tee_local 4
                                                                i32.load
                                                                tee_local 1
                                                                br_if 0 (;@30;)
                                                                get_local 6
                                                                i32.const 16
                                                                i32.add
                                                                set_local 4
                                                                get_local 6
                                                                i32.load offset=16
                                                                tee_local 1
                                                                br_if 0 (;@30;)
                                                              end
                                                              get_local 8
                                                              i32.const 0
                                                              i32.store
                                                              get_local 9
                                                              i32.eqz
                                                              br_if 27 (;@2;)
                                                              br 26 (;@3;)
                                                            end
                                                            current_memory
                                                            set_local 2
                                                            get_local 1
                                                            set_local 8
                                                            i32.const 16
                                                            i32.load
                                                            tee_local 9
                                                            i32.const -1
                                                            i32.add
                                                            tee_local 10
                                                            get_local 2
                                                            i32.const 16
                                                            i32.shl
                                                            tee_local 3
                                                            i32.and
                                                            if  ;; label = @29
                                                              get_local 1
                                                              get_local 3
                                                              i32.sub
                                                              get_local 10
                                                              get_local 3
                                                              i32.add
                                                              i32.const 0
                                                              get_local 9
                                                              i32.sub
                                                              i32.and
                                                              i32.add
                                                              set_local 8
                                                            end
                                                            get_local 8
                                                            get_local 5
                                                            i32.le_u
                                                            get_local 8
                                                            i32.const 2147483646
                                                            i32.gt_u
                                                            i32.or
                                                            br_if 9 (;@19;)
                                                            get_local 7
                                                            if  ;; label = @29
                                                              get_local 0
                                                              i32.load offset=432
                                                              tee_local 2
                                                              get_local 8
                                                              i32.add
                                                              tee_local 9
                                                              get_local 2
                                                              i32.le_u
                                                              get_local 9
                                                              get_local 7
                                                              i32.gt_u
                                                              i32.or
                                                              br_if 10 (;@19;)
                                                            end
                                                            get_local 8
                                                            call $.morecore
                                                            tee_local 2
                                                            get_local 3
                                                            i32.eq
                                                            br_if 11 (;@17;)
                                                            get_local 2
                                                            set_local 3
                                                          end
                                                          get_local 5
                                                          i32.const 48
                                                          i32.add
                                                          get_local 8
                                                          i32.le_u
                                                          get_local 8
                                                          i32.const 2147483646
                                                          i32.gt_u
                                                          i32.or
                                                          get_local 3
                                                          i32.const -1
                                                          i32.eq
                                                          i32.or
                                                          br_if 4 (;@23;)
                                                          get_local 4
                                                          get_local 8
                                                          i32.sub
                                                          i32.const 20
                                                          i32.load
                                                          tee_local 2
                                                          i32.add
                                                          i32.const 0
                                                          get_local 2
                                                          i32.sub
                                                          i32.and
                                                          tee_local 2
                                                          i32.const 2147483646
                                                          i32.gt_u
                                                          br_if 10 (;@17;)
                                                          get_local 2
                                                          call $.morecore
                                                          i32.const -1
                                                          i32.eq
                                                          br_if 7 (;@20;)
                                                          get_local 2
                                                          get_local 8
                                                          i32.add
                                                          set_local 8
                                                          br 10 (;@17;)
                                                        end
                                                        get_local 0
                                                        get_local 6
                                                        get_local 3
                                                        i32.or
                                                        i32.store
                                                        get_local 5
                                                      end
                                                      tee_local 3
                                                      get_local 1
                                                      i32.store offset=12
                                                      get_local 5
                                                      i32.const 8
                                                      i32.add
                                                      get_local 1
                                                      i32.store
                                                      get_local 1
                                                      get_local 5
                                                      i32.store offset=12
                                                      get_local 1
                                                      get_local 3
                                                      i32.store offset=8
                                                    end
                                                    get_local 0
                                                    i32.const 20
                                                    i32.add
                                                    get_local 8
                                                    i32.store
                                                    get_local 0
                                                    i32.const 8
                                                    i32.add
                                                    get_local 2
                                                    i32.store
                                                    get_local 4
                                                    return
                                                  end
                                                  get_local 3
                                                  i32.const 20
                                                  i32.add
                                                  tee_local 4
                                                  i32.load
                                                  tee_local 1
                                                  i32.eqz
                                                  if  ;; label = @24
                                                    get_local 3
                                                    i32.load offset=16
                                                    tee_local 1
                                                    i32.eqz
                                                    br_if 3 (;@21;)
                                                    get_local 3
                                                    i32.const 16
                                                    i32.add
                                                    set_local 4
                                                  end
                                                  loop  ;; label = @24
                                                    get_local 4
                                                    set_local 8
                                                    get_local 1
                                                    tee_local 6
                                                    i32.const 20
                                                    i32.add
                                                    tee_local 4
                                                    i32.load
                                                    tee_local 1
                                                    br_if 0 (;@24;)
                                                    get_local 6
                                                    i32.const 16
                                                    i32.add
                                                    set_local 4
                                                    get_local 6
                                                    i32.load offset=16
                                                    tee_local 1
                                                    br_if 0 (;@24;)
                                                  end
                                                  get_local 8
                                                  i32.const 0
                                                  i32.store
                                                  get_local 7
                                                  i32.eqz
                                                  br_if 19 (;@4;)
                                                  br 18 (;@5;)
                                                end
                                                get_local 3
                                                i32.const -1
                                                i32.ne
                                                br_if 5 (;@17;)
                                                br 3 (;@19;)
                                              end
                                              i32.const 0
                                              set_local 6
                                              get_local 9
                                              br_if 18 (;@3;)
                                              br 19 (;@2;)
                                            end
                                            i32.const 0
                                            set_local 6
                                            get_local 7
                                            br_if 15 (;@5;)
                                            br 16 (;@4;)
                                          end
                                          i32.const 0
                                          get_local 8
                                          i32.sub
                                          call $.morecore
                                          drop
                                        end
                                        get_local 0
                                        i32.const 444
                                        i32.add
                                        tee_local 2
                                        get_local 2
                                        i32.load
                                        i32.const 4
                                        i32.or
                                        i32.store
                                      end
                                      get_local 1
                                      i32.const 2147483646
                                      i32.gt_u
                                      br_if 1 (;@16;)
                                      get_local 1
                                      call $.morecore
                                      set_local 3
                                      current_memory
                                      set_local 1
                                      get_local 3
                                      i32.const -1
                                      i32.eq
                                      br_if 1 (;@16;)
                                      get_local 3
                                      get_local 1
                                      i32.const 16
                                      i32.shl
                                      tee_local 1
                                      i32.ge_u
                                      br_if 1 (;@16;)
                                      get_local 1
                                      get_local 3
                                      i32.sub
                                      tee_local 8
                                      get_local 5
                                      i32.const 40
                                      i32.add
                                      i32.le_u
                                      br_if 1 (;@16;)
                                    end
                                    get_local 0
                                    get_local 0
                                    i32.load offset=432
                                    get_local 8
                                    i32.add
                                    tee_local 1
                                    i32.store offset=432
                                    get_local 1
                                    get_local 0
                                    i32.load offset=436
                                    i32.gt_u
                                    if  ;; label = @17
                                      get_local 0
                                      i32.const 436
                                      i32.add
                                      get_local 1
                                      i32.store
                                    end
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          get_local 0
                                          i32.load offset=24
                                          tee_local 7
                                          if  ;; label = @20
                                            get_local 0
                                            i32.const 448
                                            i32.add
                                            tee_local 9
                                            set_local 1
                                            loop  ;; label = @21
                                              get_local 1
                                              i32.eqz
                                              br_if 3 (;@18;)
                                              get_local 3
                                              get_local 1
                                              i32.load
                                              tee_local 2
                                              get_local 1
                                              i32.load offset=4
                                              tee_local 4
                                              i32.add
                                              i32.eq
                                              br_if 2 (;@19;)
                                              get_local 1
                                              i32.load offset=8
                                              set_local 1
                                              br 0 (;@21;)
                                            end
                                            unreachable
                                          end
                                          block  ;; label = @20
                                            get_local 0
                                            i32.load offset=16
                                            tee_local 1
                                            if  ;; label = @21
                                              get_local 3
                                              get_local 1
                                              i32.ge_u
                                              br_if 1 (;@20;)
                                            end
                                            get_local 0
                                            i32.const 16
                                            i32.add
                                            get_local 3
                                            i32.store
                                          end
                                          get_local 0
                                          get_local 8
                                          i32.store offset=452
                                          get_local 0
                                          get_local 3
                                          i32.store offset=448
                                          i32.const 0
                                          set_local 1
                                          get_local 0
                                          i32.const 0
                                          i32.store offset=460
                                          get_local 0
                                          i32.const -1
                                          i32.store offset=32
                                          get_local 0
                                          i32.const 12
                                          i32.load
                                          i32.store offset=36
                                          block  ;; label = @20
                                            loop  ;; label = @21
                                              get_local 1
                                              i32.const 256
                                              i32.eq
                                              br_if 1 (;@20;)
                                              get_local 0
                                              get_local 1
                                              i32.add
                                              tee_local 2
                                              i32.const 48
                                              i32.add
                                              get_local 2
                                              i32.const 40
                                              i32.add
                                              tee_local 4
                                              i32.store
                                              get_local 2
                                              i32.const 52
                                              i32.add
                                              get_local 4
                                              i32.store
                                              get_local 1
                                              i32.const 8
                                              i32.add
                                              set_local 1
                                              br 0 (;@21;)
                                            end
                                            unreachable
                                          end
                                          get_local 0
                                          get_local 0
                                          get_local 0
                                          i32.const -4
                                          i32.add
                                          i32.load
                                          i32.const -8
                                          i32.and
                                          i32.add
                                          i32.const -8
                                          i32.add
                                          tee_local 1
                                          get_local 3
                                          get_local 8
                                          i32.add
                                          i32.const -40
                                          i32.add
                                          get_local 1
                                          i32.sub
                                          call $.init_top
                                          br 2 (;@17;)
                                        end
                                        get_local 1
                                        i32.load8_u offset=12
                                        i32.const 8
                                        i32.and
                                        get_local 3
                                        get_local 7
                                        i32.le_u
                                        i32.or
                                        get_local 2
                                        get_local 7
                                        i32.gt_u
                                        i32.or
                                        br_if 0 (;@18;)
                                        get_local 1
                                        i32.const 4
                                        i32.add
                                        get_local 4
                                        get_local 8
                                        i32.add
                                        i32.store
                                        get_local 0
                                        get_local 7
                                        get_local 0
                                        i32.const 12
                                        i32.add
                                        i32.load
                                        get_local 8
                                        i32.add
                                        call $.init_top
                                        br 1 (;@17;)
                                      end
                                      get_local 3
                                      get_local 0
                                      i32.load offset=16
                                      i32.lt_u
                                      if  ;; label = @18
                                        get_local 0
                                        i32.const 16
                                        i32.add
                                        get_local 3
                                        i32.store
                                      end
                                      get_local 3
                                      get_local 8
                                      i32.add
                                      set_local 2
                                      get_local 9
                                      set_local 1
                                      block (result i32)  ;; label = @18
                                        block  ;; label = @19
                                          block (result i32)  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  loop  ;; label = @24
                                                    get_local 1
                                                    i32.eqz
                                                    br_if 1 (;@23;)
                                                    get_local 1
                                                    i32.load
                                                    get_local 2
                                                    i32.ne
                                                    if  ;; label = @25
                                                      get_local 1
                                                      i32.load offset=8
                                                      set_local 1
                                                      br 1 (;@24;)
                                                    end
                                                  end
                                                  get_local 1
                                                  i32.load8_u offset=12
                                                  i32.const 8
                                                  i32.and
                                                  br_if 0 (;@23;)
                                                  get_local 1
                                                  get_local 3
                                                  i32.store
                                                  get_local 1
                                                  get_local 1
                                                  i32.load offset=4
                                                  get_local 8
                                                  i32.add
                                                  i32.store offset=4
                                                  get_local 3
                                                  i32.const -8
                                                  get_local 3
                                                  i32.sub
                                                  i32.const 7
                                                  i32.and
                                                  i32.const 0
                                                  get_local 3
                                                  i32.const 8
                                                  i32.add
                                                  i32.const 7
                                                  i32.and
                                                  select
                                                  i32.add
                                                  tee_local 8
                                                  get_local 5
                                                  i32.const 3
                                                  i32.or
                                                  i32.store offset=4
                                                  get_local 2
                                                  i32.const -8
                                                  get_local 2
                                                  i32.sub
                                                  i32.const 7
                                                  i32.and
                                                  i32.const 0
                                                  get_local 2
                                                  i32.const 8
                                                  i32.add
                                                  i32.const 7
                                                  i32.and
                                                  select
                                                  i32.add
                                                  tee_local 4
                                                  get_local 8
                                                  i32.sub
                                                  get_local 5
                                                  i32.sub
                                                  set_local 1
                                                  get_local 8
                                                  get_local 5
                                                  i32.add
                                                  set_local 5
                                                  get_local 7
                                                  get_local 4
                                                  i32.eq
                                                  br_if 1 (;@22;)
                                                  get_local 0
                                                  i32.load offset=20
                                                  get_local 4
                                                  i32.eq
                                                  br_if 8 (;@15;)
                                                  get_local 4
                                                  i32.load offset=4
                                                  tee_local 2
                                                  i32.const 3
                                                  i32.and
                                                  i32.const 1
                                                  i32.ne
                                                  br_if 16 (;@7;)
                                                  get_local 2
                                                  i32.const -8
                                                  i32.and
                                                  set_local 9
                                                  get_local 2
                                                  i32.const 255
                                                  i32.gt_u
                                                  br_if 9 (;@14;)
                                                  get_local 4
                                                  i32.load offset=12
                                                  tee_local 3
                                                  get_local 4
                                                  i32.load offset=8
                                                  tee_local 6
                                                  i32.eq
                                                  br_if 10 (;@13;)
                                                  get_local 3
                                                  get_local 6
                                                  i32.store offset=8
                                                  get_local 6
                                                  get_local 3
                                                  i32.store offset=12
                                                  br 15 (;@8;)
                                                end
                                                get_local 0
                                                get_local 7
                                                call $.segment_holding
                                                tee_local 1
                                                i32.load offset=4
                                                set_local 2
                                                get_local 1
                                                i32.load
                                                set_local 1
                                                get_local 0
                                                get_local 3
                                                get_local 8
                                                i32.const -40
                                                i32.add
                                                call $.init_top
                                                get_local 7
                                                get_local 1
                                                get_local 2
                                                i32.add
                                                tee_local 2
                                                i32.const 39
                                                get_local 2
                                                i32.sub
                                                i32.const 7
                                                i32.and
                                                i32.const 0
                                                get_local 2
                                                i32.const -39
                                                i32.add
                                                i32.const 7
                                                i32.and
                                                select
                                                i32.add
                                                i32.const -47
                                                i32.add
                                                tee_local 1
                                                get_local 1
                                                get_local 7
                                                i32.const 16
                                                i32.add
                                                i32.lt_u
                                                select
                                                tee_local 4
                                                i32.const 27
                                                i32.store offset=4
                                                get_local 4
                                                i32.const 16
                                                i32.add
                                                get_local 9
                                                i32.const 8
                                                i32.add
                                                i64.load align=4
                                                i64.store align=4
                                                get_local 4
                                                get_local 9
                                                i64.load align=4
                                                i64.store offset=8 align=4
                                                get_local 0
                                                i32.const 448
                                                i32.add
                                                get_local 3
                                                i32.store
                                                get_local 0
                                                get_local 4
                                                i32.const 8
                                                i32.add
                                                i32.store offset=456
                                                get_local 0
                                                i32.const 0
                                                i32.store offset=460
                                                get_local 0
                                                get_local 8
                                                i32.store offset=452
                                                get_local 4
                                                i32.const 28
                                                i32.add
                                                set_local 1
                                                loop  ;; label = @23
                                                  get_local 1
                                                  i32.const 7
                                                  i32.store
                                                  get_local 1
                                                  i32.const 4
                                                  i32.add
                                                  tee_local 1
                                                  get_local 2
                                                  i32.lt_u
                                                  br_if 0 (;@23;)
                                                end
                                                get_local 4
                                                get_local 7
                                                i32.eq
                                                br_if 5 (;@17;)
                                                get_local 4
                                                i32.const 4
                                                i32.add
                                                tee_local 1
                                                get_local 1
                                                i32.load
                                                i32.const -2
                                                i32.and
                                                i32.store
                                                get_local 4
                                                get_local 4
                                                get_local 7
                                                i32.sub
                                                tee_local 8
                                                i32.store
                                                get_local 7
                                                get_local 8
                                                i32.const 1
                                                i32.or
                                                i32.store offset=4
                                                get_local 8
                                                i32.const 255
                                                i32.le_u
                                                if  ;; label = @23
                                                  get_local 0
                                                  get_local 8
                                                  i32.const 3
                                                  i32.shr_u
                                                  tee_local 2
                                                  i32.const 3
                                                  i32.shl
                                                  i32.add
                                                  i32.const 40
                                                  i32.add
                                                  set_local 1
                                                  get_local 0
                                                  i32.load
                                                  tee_local 3
                                                  i32.const 1
                                                  get_local 2
                                                  i32.shl
                                                  tee_local 2
                                                  i32.and
                                                  i32.eqz
                                                  br_if 2 (;@21;)
                                                  get_local 1
                                                  i32.load offset=8
                                                  br 3 (;@20;)
                                                end
                                                get_local 8
                                                i32.const 8
                                                i32.shr_u
                                                tee_local 2
                                                i32.eqz
                                                br_if 3 (;@19;)
                                                i32.const 31
                                                get_local 8
                                                i32.const 16777215
                                                i32.gt_u
                                                br_if 4 (;@18;)
                                                drop
                                                get_local 8
                                                i32.const 14
                                                get_local 2
                                                get_local 2
                                                i32.const 1048320
                                                i32.add
                                                i32.const 16
                                                i32.shr_u
                                                i32.const 8
                                                i32.and
                                                tee_local 1
                                                i32.shl
                                                tee_local 2
                                                i32.const 520192
                                                i32.add
                                                i32.const 16
                                                i32.shr_u
                                                i32.const 4
                                                i32.and
                                                tee_local 3
                                                get_local 1
                                                i32.or
                                                get_local 2
                                                get_local 3
                                                i32.shl
                                                tee_local 1
                                                i32.const 245760
                                                i32.add
                                                i32.const 16
                                                i32.shr_u
                                                i32.const 2
                                                i32.and
                                                tee_local 2
                                                i32.or
                                                i32.sub
                                                get_local 1
                                                get_local 2
                                                i32.shl
                                                i32.const 15
                                                i32.shr_u
                                                i32.add
                                                tee_local 1
                                                i32.const 7
                                                i32.add
                                                i32.shr_u
                                                i32.const 1
                                                i32.and
                                                get_local 1
                                                i32.const 1
                                                i32.shl
                                                i32.or
                                                br 4 (;@18;)
                                              end
                                              get_local 0
                                              i32.const 24
                                              i32.add
                                              get_local 5
                                              i32.store
                                              get_local 0
                                              i32.const 12
                                              i32.add
                                              tee_local 2
                                              get_local 2
                                              i32.load
                                              get_local 1
                                              i32.add
                                              tee_local 1
                                              i32.store
                                              get_local 5
                                              get_local 1
                                              i32.const 1
                                              i32.or
                                              i32.store offset=4
                                              br 15 (;@6;)
                                            end
                                            get_local 0
                                            get_local 3
                                            get_local 2
                                            i32.or
                                            i32.store
                                            get_local 1
                                          end
                                          tee_local 2
                                          get_local 7
                                          i32.store offset=12
                                          get_local 1
                                          i32.const 8
                                          i32.add
                                          get_local 7
                                          i32.store
                                          get_local 7
                                          get_local 1
                                          i32.store offset=12
                                          get_local 7
                                          get_local 2
                                          i32.store offset=8
                                          br 2 (;@17;)
                                        end
                                        i32.const 0
                                      end
                                      set_local 1
                                      get_local 7
                                      i64.const 0
                                      i64.store offset=16 align=4
                                      get_local 7
                                      i32.const 28
                                      i32.add
                                      get_local 1
                                      i32.store
                                      get_local 0
                                      get_local 1
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      i32.const 304
                                      i32.add
                                      set_local 2
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          get_local 0
                                          i32.load offset=4
                                          tee_local 3
                                          i32.const 1
                                          get_local 1
                                          i32.shl
                                          tee_local 4
                                          i32.and
                                          if  ;; label = @20
                                            get_local 8
                                            i32.const 0
                                            i32.const 25
                                            get_local 1
                                            i32.const 1
                                            i32.shr_u
                                            i32.sub
                                            get_local 1
                                            i32.const 31
                                            i32.eq
                                            select
                                            i32.shl
                                            set_local 1
                                            get_local 2
                                            i32.load
                                            set_local 3
                                            loop  ;; label = @21
                                              get_local 3
                                              tee_local 2
                                              i32.load offset=4
                                              i32.const -8
                                              i32.and
                                              get_local 8
                                              i32.eq
                                              br_if 3 (;@18;)
                                              get_local 1
                                              i32.const 29
                                              i32.shr_u
                                              set_local 3
                                              get_local 1
                                              i32.const 1
                                              i32.shl
                                              set_local 1
                                              get_local 2
                                              get_local 3
                                              i32.const 4
                                              i32.and
                                              i32.add
                                              i32.const 16
                                              i32.add
                                              tee_local 4
                                              i32.load
                                              tee_local 3
                                              br_if 0 (;@21;)
                                            end
                                            get_local 4
                                            get_local 7
                                            i32.store
                                            get_local 7
                                            i32.const 24
                                            i32.add
                                            get_local 2
                                            i32.store
                                            br 1 (;@19;)
                                          end
                                          get_local 0
                                          i32.const 4
                                          i32.add
                                          get_local 3
                                          get_local 4
                                          i32.or
                                          i32.store
                                          get_local 2
                                          get_local 7
                                          i32.store
                                          get_local 7
                                          i32.const 24
                                          i32.add
                                          get_local 2
                                          i32.store
                                        end
                                        get_local 7
                                        get_local 7
                                        i32.store offset=12
                                        get_local 7
                                        get_local 7
                                        i32.store offset=8
                                        br 1 (;@17;)
                                      end
                                      get_local 2
                                      i32.load offset=8
                                      tee_local 1
                                      get_local 7
                                      i32.store offset=12
                                      get_local 2
                                      get_local 7
                                      i32.store offset=8
                                      get_local 7
                                      i32.const 24
                                      i32.add
                                      i32.const 0
                                      i32.store
                                      get_local 7
                                      get_local 2
                                      i32.store offset=12
                                      get_local 7
                                      get_local 1
                                      i32.store offset=8
                                    end
                                    get_local 0
                                    i32.const 12
                                    i32.add
                                    tee_local 1
                                    i32.load
                                    tee_local 2
                                    get_local 5
                                    i32.le_u
                                    br_if 0 (;@16;)
                                    get_local 0
                                    i32.const 24
                                    i32.add
                                    tee_local 4
                                    i32.load
                                    tee_local 3
                                    get_local 5
                                    i32.add
                                    tee_local 6
                                    get_local 2
                                    get_local 5
                                    i32.sub
                                    tee_local 2
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    get_local 1
                                    get_local 2
                                    i32.store
                                    get_local 4
                                    get_local 6
                                    i32.store
                                    get_local 3
                                    get_local 5
                                    i32.const 3
                                    i32.or
                                    i32.store offset=4
                                    get_local 3
                                    i32.const 8
                                    i32.add
                                    set_local 6
                                  end
                                  get_local 6
                                  return
                                end
                                get_local 5
                                get_local 0
                                i32.const 8
                                i32.add
                                tee_local 2
                                i32.load
                                get_local 1
                                i32.add
                                tee_local 1
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                get_local 0
                                i32.const 20
                                i32.add
                                get_local 5
                                i32.store
                                get_local 2
                                get_local 1
                                i32.store
                                get_local 5
                                get_local 1
                                i32.add
                                get_local 1
                                i32.store
                                br 8 (;@6;)
                              end
                              get_local 4
                              i32.load offset=24
                              set_local 10
                              get_local 4
                              i32.load offset=12
                              tee_local 6
                              get_local 4
                              i32.eq
                              br_if 1 (;@12;)
                              get_local 4
                              i32.load offset=8
                              tee_local 2
                              get_local 6
                              i32.store offset=12
                              get_local 6
                              get_local 2
                              i32.store offset=8
                              get_local 10
                              br_if 4 (;@9;)
                              br 5 (;@8;)
                            end
                            get_local 0
                            get_local 0
                            i32.load
                            i32.const -2
                            get_local 2
                            i32.const 3
                            i32.shr_u
                            i32.rotl
                            i32.and
                            i32.store
                            br 4 (;@8;)
                          end
                          get_local 4
                          i32.const 20
                          i32.add
                          tee_local 2
                          i32.load
                          tee_local 3
                          i32.eqz
                          if  ;; label = @12
                            get_local 4
                            i32.const 16
                            i32.add
                            tee_local 2
                            i32.load
                            tee_local 3
                            i32.eqz
                            br_if 2 (;@10;)
                          end
                          loop  ;; label = @12
                            get_local 2
                            set_local 7
                            get_local 3
                            tee_local 6
                            i32.const 20
                            i32.add
                            tee_local 2
                            i32.load
                            tee_local 3
                            br_if 0 (;@12;)
                            get_local 6
                            i32.const 16
                            i32.add
                            set_local 2
                            get_local 6
                            i32.load offset=16
                            tee_local 3
                            br_if 0 (;@12;)
                          end
                          get_local 7
                          i32.const 0
                          i32.store
                          get_local 10
                          i32.eqz
                          br_if 3 (;@8;)
                          br 2 (;@9;)
                        end
                        i32.const 0
                        return
                      end
                      i32.const 0
                      set_local 6
                      get_local 10
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        get_local 0
                        get_local 4
                        i32.load offset=28
                        tee_local 3
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.const 304
                        i32.add
                        tee_local 2
                        i32.load
                        get_local 4
                        i32.ne
                        if  ;; label = @11
                          get_local 10
                          i32.const 16
                          i32.add
                          get_local 10
                          i32.load offset=16
                          get_local 4
                          i32.ne
                          i32.const 2
                          i32.shl
                          i32.add
                          get_local 6
                          i32.store
                          get_local 6
                          br_if 1 (;@10;)
                          br 3 (;@8;)
                        end
                        get_local 2
                        get_local 6
                        i32.store
                        get_local 6
                        i32.eqz
                        br_if 1 (;@9;)
                      end
                      get_local 6
                      get_local 10
                      i32.store offset=24
                      get_local 4
                      i32.load offset=16
                      tee_local 2
                      if  ;; label = @10
                        get_local 6
                        get_local 2
                        i32.store offset=16
                        get_local 2
                        get_local 6
                        i32.store offset=24
                      end
                      get_local 4
                      i32.const 20
                      i32.add
                      i32.load
                      tee_local 2
                      i32.eqz
                      br_if 1 (;@8;)
                      get_local 6
                      i32.const 20
                      i32.add
                      get_local 2
                      i32.store
                      get_local 2
                      get_local 6
                      i32.store offset=24
                      br 1 (;@8;)
                    end
                    get_local 0
                    get_local 0
                    i32.load offset=4
                    i32.const -2
                    get_local 3
                    i32.rotl
                    i32.and
                    i32.store offset=4
                  end
                  get_local 9
                  get_local 1
                  i32.add
                  set_local 1
                  get_local 4
                  get_local 9
                  i32.add
                  set_local 4
                end
                get_local 4
                get_local 4
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                get_local 5
                get_local 1
                i32.const 1
                i32.or
                i32.store offset=4
                get_local 5
                get_local 1
                i32.add
                get_local 1
                i32.store
                block (result i32)  ;; label = @7
                  block  ;; label = @8
                    block (result i32)  ;; label = @9
                      block  ;; label = @10
                        get_local 1
                        i32.const 255
                        i32.le_u
                        if  ;; label = @11
                          get_local 0
                          get_local 1
                          i32.const 3
                          i32.shr_u
                          tee_local 2
                          i32.const 3
                          i32.shl
                          i32.add
                          i32.const 40
                          i32.add
                          set_local 1
                          get_local 0
                          i32.load
                          tee_local 3
                          i32.const 1
                          get_local 2
                          i32.shl
                          tee_local 2
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                          get_local 1
                          i32.load offset=8
                          set_local 2
                          get_local 1
                          i32.const 8
                          i32.add
                          br 2 (;@9;)
                        end
                        get_local 1
                        i32.const 8
                        i32.shr_u
                        tee_local 3
                        i32.eqz
                        br_if 2 (;@8;)
                        i32.const 31
                        get_local 1
                        i32.const 16777215
                        i32.gt_u
                        br_if 3 (;@7;)
                        drop
                        get_local 1
                        i32.const 14
                        get_local 3
                        get_local 3
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        tee_local 2
                        i32.shl
                        tee_local 3
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        tee_local 4
                        get_local 2
                        i32.or
                        get_local 3
                        get_local 4
                        i32.shl
                        tee_local 2
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        tee_local 3
                        i32.or
                        i32.sub
                        get_local 2
                        get_local 3
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        i32.add
                        tee_local 2
                        i32.const 7
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        get_local 2
                        i32.const 1
                        i32.shl
                        i32.or
                        br 3 (;@7;)
                      end
                      get_local 0
                      get_local 3
                      get_local 2
                      i32.or
                      i32.store
                      get_local 1
                      set_local 2
                      get_local 1
                      i32.const 8
                      i32.add
                    end
                    set_local 3
                    get_local 2
                    get_local 5
                    i32.store offset=12
                    get_local 3
                    get_local 5
                    i32.store
                    get_local 5
                    get_local 1
                    i32.store offset=12
                    get_local 5
                    get_local 2
                    i32.store offset=8
                    br 2 (;@6;)
                  end
                  i32.const 0
                end
                set_local 2
                get_local 5
                get_local 2
                i32.store offset=28
                get_local 5
                i64.const 0
                i64.store offset=16 align=4
                get_local 0
                get_local 2
                i32.const 2
                i32.shl
                i32.add
                i32.const 304
                i32.add
                set_local 3
                block  ;; label = @7
                  block  ;; label = @8
                    get_local 0
                    i32.load offset=4
                    tee_local 4
                    i32.const 1
                    get_local 2
                    i32.shl
                    tee_local 6
                    i32.and
                    if  ;; label = @9
                      get_local 1
                      i32.const 0
                      i32.const 25
                      get_local 2
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      get_local 2
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      set_local 2
                      get_local 3
                      i32.load
                      set_local 4
                      loop  ;; label = @10
                        get_local 4
                        tee_local 3
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        get_local 1
                        i32.eq
                        br_if 3 (;@7;)
                        get_local 2
                        i32.const 29
                        i32.shr_u
                        set_local 4
                        get_local 2
                        i32.const 1
                        i32.shl
                        set_local 2
                        get_local 3
                        get_local 4
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        tee_local 6
                        i32.load
                        tee_local 4
                        br_if 0 (;@10;)
                      end
                      get_local 6
                      get_local 5
                      i32.store
                      get_local 5
                      get_local 3
                      i32.store offset=24
                      br 1 (;@8;)
                    end
                    get_local 0
                    i32.const 4
                    i32.add
                    get_local 4
                    get_local 6
                    i32.or
                    i32.store
                    get_local 3
                    get_local 5
                    i32.store
                    get_local 5
                    get_local 3
                    i32.store offset=24
                  end
                  get_local 5
                  get_local 5
                  i32.store offset=12
                  get_local 5
                  get_local 5
                  i32.store offset=8
                  br 1 (;@6;)
                end
                get_local 3
                i32.load offset=8
                tee_local 1
                get_local 5
                i32.store offset=12
                get_local 3
                get_local 5
                i32.store offset=8
                get_local 5
                i32.const 0
                i32.store offset=24
                get_local 5
                get_local 3
                i32.store offset=12
                get_local 5
                get_local 1
                i32.store offset=8
              end
              get_local 8
              i32.const 8
              i32.add
              return
            end
            block  ;; label = @5
              block  ;; label = @6
                get_local 3
                get_local 0
                get_local 3
                i32.load offset=28
                tee_local 4
                i32.const 2
                i32.shl
                i32.add
                i32.const 304
                i32.add
                tee_local 1
                i32.load
                i32.ne
                if  ;; label = @7
                  get_local 7
                  i32.const 16
                  i32.add
                  get_local 7
                  i32.load offset=16
                  get_local 3
                  i32.ne
                  i32.const 2
                  i32.shl
                  i32.add
                  get_local 6
                  i32.store
                  get_local 6
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                get_local 1
                get_local 6
                i32.store
                get_local 6
                i32.eqz
                br_if 1 (;@5;)
              end
              get_local 6
              get_local 7
              i32.store offset=24
              get_local 3
              i32.load offset=16
              tee_local 1
              if  ;; label = @6
                get_local 6
                get_local 1
                i32.store offset=16
                get_local 1
                get_local 6
                i32.store offset=24
              end
              get_local 3
              i32.const 20
              i32.add
              i32.load
              tee_local 1
              i32.eqz
              br_if 1 (;@4;)
              get_local 6
              i32.const 20
              i32.add
              get_local 1
              i32.store
              get_local 1
              get_local 6
              i32.store offset=24
              br 1 (;@4;)
            end
            get_local 0
            i32.const 4
            i32.add
            tee_local 1
            get_local 1
            i32.load
            i32.const -2
            get_local 4
            i32.rotl
            i32.and
            i32.store
          end
          block  ;; label = @4
            get_local 2
            i32.const 15
            i32.le_u
            if  ;; label = @5
              get_local 3
              get_local 2
              get_local 5
              i32.add
              tee_local 1
              i32.const 3
              i32.or
              i32.store offset=4
              get_local 3
              get_local 1
              i32.add
              tee_local 1
              get_local 1
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              br 1 (;@4;)
            end
            get_local 3
            get_local 5
            i32.const 3
            i32.or
            i32.store offset=4
            get_local 9
            get_local 2
            i32.const 1
            i32.or
            i32.store offset=4
            get_local 9
            get_local 2
            i32.add
            get_local 2
            i32.store
            get_local 0
            i32.const 8
            i32.add
            tee_local 4
            i32.load
            tee_local 1
            if  ;; label = @5
              get_local 0
              get_local 1
              i32.const 3
              i32.shr_u
              tee_local 6
              i32.const 3
              i32.shl
              i32.add
              i32.const 40
              i32.add
              set_local 5
              get_local 0
              i32.const 20
              i32.add
              i32.load
              set_local 1
              block (result i32)  ;; label = @6
                get_local 5
                i32.load offset=8
                get_local 0
                i32.load
                tee_local 8
                i32.const 1
                get_local 6
                i32.shl
                tee_local 6
                i32.and
                br_if 0 (;@6;)
                drop
                get_local 0
                get_local 8
                get_local 6
                i32.or
                i32.store
                get_local 5
              end
              tee_local 6
              get_local 1
              i32.store offset=12
              get_local 5
              i32.const 8
              i32.add
              get_local 1
              i32.store
              get_local 1
              get_local 5
              i32.store offset=12
              get_local 1
              get_local 6
              i32.store offset=8
            end
            get_local 0
            i32.const 20
            i32.add
            get_local 9
            i32.store
            get_local 4
            get_local 2
            i32.store
          end
          get_local 3
          i32.const 8
          i32.add
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            get_local 3
            get_local 0
            get_local 3
            i32.load offset=28
            tee_local 4
            i32.const 2
            i32.shl
            i32.add
            i32.const 304
            i32.add
            tee_local 1
            i32.load
            i32.ne
            if  ;; label = @5
              get_local 9
              i32.const 16
              i32.add
              get_local 9
              i32.load offset=16
              get_local 3
              i32.ne
              i32.const 2
              i32.shl
              i32.add
              get_local 6
              i32.store
              get_local 6
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            get_local 1
            get_local 6
            i32.store
            get_local 6
            i32.eqz
            br_if 1 (;@3;)
          end
          get_local 6
          get_local 9
          i32.store offset=24
          get_local 3
          i32.load offset=16
          tee_local 1
          if  ;; label = @4
            get_local 6
            get_local 1
            i32.store offset=16
            get_local 1
            get_local 6
            i32.store offset=24
          end
          get_local 3
          i32.const 20
          i32.add
          i32.load
          tee_local 1
          i32.eqz
          br_if 1 (;@2;)
          get_local 6
          i32.const 20
          i32.add
          get_local 1
          i32.store
          get_local 1
          get_local 6
          i32.store offset=24
          br 1 (;@2;)
        end
        get_local 0
        i32.const 4
        i32.add
        tee_local 1
        get_local 1
        i32.load
        i32.const -2
        get_local 4
        i32.rotl
        i32.and
        i32.store
      end
      block  ;; label = @2
        get_local 2
        i32.const 15
        i32.le_u
        if  ;; label = @3
          get_local 3
          get_local 2
          get_local 5
          i32.add
          tee_local 1
          i32.const 3
          i32.or
          i32.store offset=4
          get_local 3
          get_local 1
          i32.add
          tee_local 1
          get_local 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        get_local 3
        get_local 5
        i32.const 3
        i32.or
        i32.store offset=4
        get_local 7
        get_local 2
        i32.const 1
        i32.or
        i32.store offset=4
        get_local 7
        get_local 2
        i32.add
        get_local 2
        i32.store
        block (result i32)  ;; label = @3
          block  ;; label = @4
            block (result i32)  ;; label = @5
              block  ;; label = @6
                get_local 2
                i32.const 255
                i32.le_u
                if  ;; label = @7
                  get_local 0
                  get_local 2
                  i32.const 3
                  i32.shr_u
                  tee_local 2
                  i32.const 3
                  i32.shl
                  i32.add
                  i32.const 40
                  i32.add
                  set_local 1
                  get_local 0
                  i32.load
                  tee_local 5
                  i32.const 1
                  get_local 2
                  i32.shl
                  tee_local 2
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  get_local 1
                  i32.const 8
                  i32.add
                  set_local 5
                  get_local 1
                  i32.load offset=8
                  br 2 (;@5;)
                end
                get_local 2
                i32.const 8
                i32.shr_u
                tee_local 5
                i32.eqz
                br_if 2 (;@4;)
                i32.const 31
                get_local 2
                i32.const 16777215
                i32.gt_u
                br_if 3 (;@3;)
                drop
                get_local 2
                i32.const 14
                get_local 5
                get_local 5
                i32.const 1048320
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 8
                i32.and
                tee_local 1
                i32.shl
                tee_local 5
                i32.const 520192
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 4
                i32.and
                tee_local 4
                get_local 1
                i32.or
                get_local 5
                get_local 4
                i32.shl
                tee_local 1
                i32.const 245760
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 2
                i32.and
                tee_local 5
                i32.or
                i32.sub
                get_local 1
                get_local 5
                i32.shl
                i32.const 15
                i32.shr_u
                i32.add
                tee_local 1
                i32.const 7
                i32.add
                i32.shr_u
                i32.const 1
                i32.and
                get_local 1
                i32.const 1
                i32.shl
                i32.or
                br 3 (;@3;)
              end
              get_local 0
              get_local 5
              get_local 2
              i32.or
              i32.store
              get_local 1
              i32.const 8
              i32.add
              set_local 5
              get_local 1
            end
            tee_local 2
            get_local 7
            i32.store offset=12
            get_local 5
            get_local 7
            i32.store
            get_local 7
            get_local 1
            i32.store offset=12
            get_local 7
            get_local 2
            i32.store offset=8
            br 2 (;@2;)
          end
          i32.const 0
        end
        set_local 1
        get_local 7
        get_local 1
        i32.store offset=28
        get_local 7
        i64.const 0
        i64.store offset=16 align=4
        get_local 0
        get_local 1
        i32.const 2
        i32.shl
        i32.add
        i32.const 304
        i32.add
        set_local 5
        block  ;; label = @3
          block  ;; label = @4
            get_local 0
            i32.const 4
            i32.add
            tee_local 4
            i32.load
            tee_local 6
            i32.const 1
            get_local 1
            i32.shl
            tee_local 8
            i32.and
            if  ;; label = @5
              get_local 2
              i32.const 0
              i32.const 25
              get_local 1
              i32.const 1
              i32.shr_u
              i32.sub
              get_local 1
              i32.const 31
              i32.eq
              select
              i32.shl
              set_local 1
              get_local 5
              i32.load
              set_local 4
              loop  ;; label = @6
                get_local 4
                tee_local 5
                i32.load offset=4
                i32.const -8
                i32.and
                get_local 2
                i32.eq
                br_if 3 (;@3;)
                get_local 1
                i32.const 29
                i32.shr_u
                set_local 4
                get_local 1
                i32.const 1
                i32.shl
                set_local 1
                get_local 5
                get_local 4
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                tee_local 6
                i32.load
                tee_local 4
                br_if 0 (;@6;)
              end
              get_local 6
              get_local 7
              i32.store
              get_local 7
              get_local 5
              i32.store offset=24
              br 1 (;@4;)
            end
            get_local 4
            get_local 6
            get_local 8
            i32.or
            i32.store
            get_local 5
            get_local 7
            i32.store
            get_local 7
            get_local 5
            i32.store offset=24
          end
          get_local 7
          get_local 7
          i32.store offset=12
          get_local 7
          get_local 7
          i32.store offset=8
          br 1 (;@2;)
        end
        get_local 5
        i32.load offset=8
        tee_local 1
        get_local 7
        i32.store offset=12
        get_local 5
        get_local 7
        i32.store offset=8
        get_local 7
        i32.const 0
        i32.store offset=24
        get_local 7
        get_local 5
        i32.store offset=12
        get_local 7
        get_local 1
        i32.store offset=8
      end
      get_local 3
      i32.const 8
      i32.add
    end)
  (func $.mspace_free (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      get_local 1
      i32.eqz
      br_if 0 (;@1;)
      get_local 1
      i32.const -8
      i32.add
      tee_local 2
      get_local 0
      i32.load offset=16
      tee_local 4
      i32.lt_u
      br_if 0 (;@1;)
      get_local 1
      i32.const -4
      i32.add
      i32.load
      tee_local 1
      i32.const 3
      i32.and
      tee_local 3
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      get_local 2
      get_local 1
      i32.const -8
      i32.and
      tee_local 5
      i32.add
      set_local 6
      block  ;; label = @2
        get_local 1
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        get_local 3
        i32.eqz
        br_if 1 (;@1;)
        get_local 2
        get_local 2
        i32.load
        tee_local 1
        i32.sub
        tee_local 2
        get_local 4
        i32.lt_u
        br_if 1 (;@1;)
        get_local 1
        get_local 5
        i32.add
        set_local 5
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                get_local 0
                i32.load offset=20
                get_local 2
                i32.ne
                if  ;; label = @7
                  get_local 1
                  i32.const 255
                  i32.gt_u
                  br_if 1 (;@6;)
                  get_local 2
                  i32.load offset=12
                  tee_local 4
                  get_local 2
                  i32.load offset=8
                  tee_local 3
                  i32.eq
                  br_if 2 (;@5;)
                  get_local 4
                  get_local 3
                  i32.store offset=8
                  get_local 3
                  get_local 4
                  i32.store offset=12
                  br 5 (;@2;)
                end
                get_local 6
                i32.load offset=4
                tee_local 1
                i32.const 3
                i32.and
                i32.const 3
                i32.ne
                br_if 4 (;@2;)
                get_local 6
                i32.const 4
                i32.add
                get_local 1
                i32.const -2
                i32.and
                i32.store
                get_local 2
                get_local 5
                i32.const 1
                i32.or
                i32.store offset=4
                get_local 0
                get_local 5
                i32.store offset=8
                get_local 2
                get_local 5
                i32.add
                get_local 5
                i32.store
                return
              end
              get_local 2
              i32.load offset=24
              set_local 7
              get_local 2
              i32.load offset=12
              tee_local 3
              get_local 2
              i32.eq
              br_if 1 (;@4;)
              get_local 2
              i32.load offset=8
              tee_local 1
              get_local 3
              i32.store offset=12
              get_local 3
              get_local 1
              i32.store offset=8
              get_local 7
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            get_local 0
            get_local 0
            i32.load
            i32.const -2
            get_local 1
            i32.const 3
            i32.shr_u
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          block  ;; label = @4
            get_local 2
            i32.const 20
            i32.add
            tee_local 1
            i32.load
            tee_local 4
            i32.eqz
            if  ;; label = @5
              get_local 2
              i32.const 16
              i32.add
              tee_local 1
              i32.load
              tee_local 4
              i32.eqz
              br_if 1 (;@4;)
            end
            loop  ;; label = @5
              get_local 1
              set_local 8
              get_local 4
              tee_local 3
              i32.const 20
              i32.add
              tee_local 1
              i32.load
              tee_local 4
              br_if 0 (;@5;)
              get_local 3
              i32.const 16
              i32.add
              set_local 1
              get_local 3
              i32.load offset=16
              tee_local 4
              br_if 0 (;@5;)
            end
            get_local 8
            i32.const 0
            i32.store
            get_local 7
            i32.eqz
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          i32.const 0
          set_local 3
          get_local 7
          i32.eqz
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            get_local 0
            get_local 2
            i32.load offset=28
            tee_local 4
            i32.const 2
            i32.shl
            i32.add
            i32.const 304
            i32.add
            tee_local 1
            i32.load
            get_local 2
            i32.ne
            if  ;; label = @5
              get_local 7
              i32.const 16
              i32.add
              get_local 7
              i32.load offset=16
              get_local 2
              i32.ne
              i32.const 2
              i32.shl
              i32.add
              get_local 3
              i32.store
              get_local 3
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            get_local 1
            get_local 3
            i32.store
            get_local 3
            i32.eqz
            br_if 1 (;@3;)
          end
          get_local 3
          get_local 7
          i32.store offset=24
          get_local 2
          i32.load offset=16
          tee_local 1
          if  ;; label = @4
            get_local 3
            get_local 1
            i32.store offset=16
            get_local 1
            get_local 3
            i32.store offset=24
          end
          get_local 2
          i32.const 20
          i32.add
          i32.load
          tee_local 1
          i32.eqz
          br_if 1 (;@2;)
          get_local 3
          i32.const 20
          i32.add
          get_local 1
          i32.store
          get_local 1
          get_local 3
          i32.store offset=24
          br 1 (;@2;)
        end
        get_local 0
        get_local 0
        i32.load offset=4
        i32.const -2
        get_local 4
        i32.rotl
        i32.and
        i32.store offset=4
      end
      get_local 2
      get_local 6
      i32.ge_u
      br_if 0 (;@1;)
      get_local 6
      i32.load offset=4
      tee_local 1
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 1
                      i32.const 2
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        get_local 0
                        i32.load offset=24
                        get_local 6
                        i32.eq
                        br_if 1 (;@9;)
                        get_local 0
                        i32.load offset=20
                        get_local 6
                        i32.eq
                        br_if 2 (;@8;)
                        get_local 1
                        i32.const -8
                        i32.and
                        get_local 5
                        i32.add
                        set_local 5
                        get_local 1
                        i32.const 255
                        i32.gt_u
                        br_if 3 (;@7;)
                        get_local 6
                        i32.load offset=12
                        tee_local 4
                        get_local 6
                        i32.load offset=8
                        tee_local 3
                        i32.eq
                        br_if 4 (;@6;)
                        get_local 4
                        get_local 3
                        i32.store offset=8
                        get_local 3
                        get_local 4
                        i32.store offset=12
                        br 7 (;@3;)
                      end
                      get_local 6
                      i32.const 4
                      i32.add
                      get_local 1
                      i32.const -2
                      i32.and
                      i32.store
                      get_local 2
                      get_local 5
                      i32.add
                      get_local 5
                      i32.store
                      get_local 2
                      get_local 5
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      br 7 (;@2;)
                    end
                    get_local 0
                    i32.const 24
                    i32.add
                    get_local 2
                    i32.store
                    get_local 0
                    get_local 0
                    i32.load offset=12
                    get_local 5
                    i32.add
                    tee_local 1
                    i32.store offset=12
                    get_local 2
                    get_local 1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    get_local 2
                    get_local 0
                    i32.load offset=20
                    i32.ne
                    br_if 7 (;@1;)
                    get_local 0
                    i32.const 0
                    i32.store offset=8
                    get_local 0
                    i32.const 20
                    i32.add
                    i32.const 0
                    i32.store
                    return
                  end
                  get_local 0
                  i32.const 20
                  i32.add
                  get_local 2
                  i32.store
                  get_local 0
                  get_local 0
                  i32.load offset=8
                  get_local 5
                  i32.add
                  tee_local 1
                  i32.store offset=8
                  get_local 2
                  get_local 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  get_local 2
                  get_local 1
                  i32.add
                  get_local 1
                  i32.store
                  return
                end
                get_local 6
                i32.load offset=24
                set_local 7
                get_local 6
                i32.load offset=12
                tee_local 3
                get_local 6
                i32.eq
                br_if 1 (;@5;)
                get_local 6
                i32.load offset=8
                tee_local 1
                get_local 3
                i32.store offset=12
                get_local 3
                get_local 1
                i32.store offset=8
                get_local 7
                br_if 2 (;@4;)
                br 3 (;@3;)
              end
              get_local 0
              get_local 0
              i32.load
              i32.const -2
              get_local 1
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store
              br 2 (;@3;)
            end
            block  ;; label = @5
              get_local 6
              i32.const 20
              i32.add
              tee_local 1
              i32.load
              tee_local 4
              i32.eqz
              if  ;; label = @6
                get_local 6
                i32.const 16
                i32.add
                tee_local 1
                i32.load
                tee_local 4
                i32.eqz
                br_if 1 (;@5;)
              end
              loop  ;; label = @6
                get_local 1
                set_local 8
                get_local 4
                tee_local 3
                i32.const 20
                i32.add
                tee_local 1
                i32.load
                tee_local 4
                br_if 0 (;@6;)
                get_local 3
                i32.const 16
                i32.add
                set_local 1
                get_local 3
                i32.load offset=16
                tee_local 4
                br_if 0 (;@6;)
              end
              get_local 8
              i32.const 0
              i32.store
              get_local 7
              i32.eqz
              br_if 2 (;@3;)
              br 1 (;@4;)
            end
            i32.const 0
            set_local 3
            get_local 7
            i32.eqz
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              get_local 0
              get_local 6
              i32.load offset=28
              tee_local 4
              i32.const 2
              i32.shl
              i32.add
              i32.const 304
              i32.add
              tee_local 1
              i32.load
              get_local 6
              i32.ne
              if  ;; label = @6
                get_local 7
                i32.const 16
                i32.add
                get_local 7
                i32.load offset=16
                get_local 6
                i32.ne
                i32.const 2
                i32.shl
                i32.add
                get_local 3
                i32.store
                get_local 3
                br_if 1 (;@5;)
                br 3 (;@3;)
              end
              get_local 1
              get_local 3
              i32.store
              get_local 3
              i32.eqz
              br_if 1 (;@4;)
            end
            get_local 3
            get_local 7
            i32.store offset=24
            get_local 6
            i32.load offset=16
            tee_local 1
            if  ;; label = @5
              get_local 3
              get_local 1
              i32.store offset=16
              get_local 1
              get_local 3
              i32.store offset=24
            end
            get_local 6
            i32.const 20
            i32.add
            i32.load
            tee_local 1
            i32.eqz
            br_if 1 (;@3;)
            get_local 3
            i32.const 20
            i32.add
            get_local 1
            i32.store
            get_local 1
            get_local 3
            i32.store offset=24
            br 1 (;@3;)
          end
          get_local 0
          get_local 0
          i32.load offset=4
          i32.const -2
          get_local 4
          i32.rotl
          i32.and
          i32.store offset=4
        end
        get_local 2
        get_local 5
        i32.add
        get_local 5
        i32.store
        get_local 2
        get_local 5
        i32.const 1
        i32.or
        i32.store offset=4
        get_local 2
        get_local 0
        i32.const 20
        i32.add
        i32.load
        i32.ne
        br_if 0 (;@2;)
        get_local 0
        get_local 5
        i32.store offset=8
        return
      end
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block (result i32)  ;; label = @4
            block  ;; label = @5
              get_local 5
              i32.const 255
              i32.le_u
              if  ;; label = @6
                get_local 0
                get_local 5
                i32.const 3
                i32.shr_u
                tee_local 4
                i32.const 3
                i32.shl
                i32.add
                i32.const 40
                i32.add
                set_local 1
                get_local 0
                i32.load
                tee_local 5
                i32.const 1
                get_local 4
                i32.shl
                tee_local 4
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                get_local 1
                i32.load offset=8
                br 2 (;@4;)
              end
              get_local 5
              i32.const 8
              i32.shr_u
              tee_local 4
              i32.eqz
              br_if 2 (;@3;)
              i32.const 31
              get_local 5
              i32.const 16777215
              i32.gt_u
              br_if 3 (;@2;)
              drop
              get_local 5
              i32.const 14
              get_local 4
              get_local 4
              i32.const 1048320
              i32.add
              i32.const 16
              i32.shr_u
              i32.const 8
              i32.and
              tee_local 1
              i32.shl
              tee_local 4
              i32.const 520192
              i32.add
              i32.const 16
              i32.shr_u
              i32.const 4
              i32.and
              tee_local 3
              get_local 1
              i32.or
              get_local 4
              get_local 3
              i32.shl
              tee_local 1
              i32.const 245760
              i32.add
              i32.const 16
              i32.shr_u
              i32.const 2
              i32.and
              tee_local 4
              i32.or
              i32.sub
              get_local 1
              get_local 4
              i32.shl
              i32.const 15
              i32.shr_u
              i32.add
              tee_local 1
              i32.const 7
              i32.add
              i32.shr_u
              i32.const 1
              i32.and
              get_local 1
              i32.const 1
              i32.shl
              i32.or
              br 3 (;@2;)
            end
            get_local 0
            get_local 5
            get_local 4
            i32.or
            i32.store
            get_local 1
          end
          tee_local 0
          get_local 2
          i32.store offset=12
          get_local 1
          i32.const 8
          i32.add
          get_local 2
          i32.store
          get_local 2
          get_local 1
          i32.store offset=12
          get_local 2
          get_local 0
          i32.store offset=8
          return
        end
        i32.const 0
      end
      set_local 1
      get_local 2
      i64.const 0
      i64.store offset=16 align=4
      get_local 2
      i32.const 28
      i32.add
      get_local 1
      i32.store
      get_local 0
      get_local 1
      i32.const 2
      i32.shl
      i32.add
      i32.const 304
      i32.add
      set_local 4
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 0
            i32.load offset=4
            tee_local 3
            i32.const 1
            get_local 1
            i32.shl
            tee_local 6
            i32.and
            if  ;; label = @5
              get_local 5
              i32.const 0
              i32.const 25
              get_local 1
              i32.const 1
              i32.shr_u
              i32.sub
              get_local 1
              i32.const 31
              i32.eq
              select
              i32.shl
              set_local 1
              get_local 4
              i32.load
              set_local 3
              loop  ;; label = @6
                get_local 3
                tee_local 4
                i32.load offset=4
                i32.const -8
                i32.and
                get_local 5
                i32.eq
                br_if 3 (;@3;)
                get_local 1
                i32.const 29
                i32.shr_u
                set_local 3
                get_local 1
                i32.const 1
                i32.shl
                set_local 1
                get_local 4
                get_local 3
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                tee_local 6
                i32.load
                tee_local 3
                br_if 0 (;@6;)
              end
              get_local 6
              get_local 2
              i32.store
              get_local 2
              i32.const 24
              i32.add
              get_local 4
              i32.store
              br 1 (;@4;)
            end
            get_local 0
            i32.const 4
            i32.add
            get_local 3
            get_local 6
            i32.or
            i32.store
            get_local 4
            get_local 2
            i32.store
            get_local 2
            i32.const 24
            i32.add
            get_local 4
            i32.store
          end
          get_local 2
          get_local 2
          i32.store offset=12
          get_local 2
          get_local 2
          i32.store offset=8
          br 1 (;@2;)
        end
        get_local 4
        i32.load offset=8
        tee_local 1
        get_local 2
        i32.store offset=12
        get_local 4
        get_local 2
        i32.store offset=8
        get_local 2
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        get_local 2
        get_local 4
        i32.store offset=12
        get_local 2
        get_local 1
        i32.store offset=8
      end
      get_local 0
      get_local 0
      i32.load offset=32
      i32.const -1
      i32.add
      tee_local 1
      i32.store offset=32
      get_local 1
      br_if 0 (;@1;)
      get_local 0
      i32.const 456
      i32.add
      set_local 1
      loop  ;; label = @2
        get_local 1
        i32.load
        tee_local 2
        i32.const 8
        i32.add
        set_local 1
        get_local 2
        br_if 0 (;@2;)
      end
      get_local 0
      i32.const 32
      i32.add
      i32.const -1
      i32.store
    end)
  (func $.init (type 2)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      current_memory
      set_local 0
      i32.const 16
      block (result i32)  ;; label = @2
        i32.const 8
        i32.load
        tee_local 6
        set_local 1
        get_local 0
        i32.const 16
        i32.shl
        get_local 6
        i32.sub
        set_local 2
        i32.const 0
        set_local 7
        i32.const 12
        i32.load
        i32.eqz
        if  ;; label = @3
          call $.init_mparams
        end
        block  ;; label = @3
          get_local 2
          i32.const 521
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 0
          set_local 7
          i32.const -520
          i32.const 16
          i32.load
          i32.sub
          get_local 2
          i32.le_u
          br_if 0 (;@3;)
          i32.const 0
          set_local 3
          get_local 1
          i32.const -8
          get_local 1
          i32.sub
          i32.const 7
          i32.and
          i32.const 0
          get_local 1
          i32.const 8
          i32.add
          i32.const 7
          i32.and
          select
          i32.add
          tee_local 0
          i32.const 8
          i32.add
          tee_local 7
          i32.const 0
          i32.const 480
          call $.memset
          set_local 4
          get_local 0
          i32.const 483
          i32.store offset=4
          get_local 0
          i32.const 444
          i32.add
          get_local 2
          i32.store
          get_local 0
          i32.const 440
          i32.add
          get_local 2
          i32.store
          get_local 0
          i32.const 460
          i32.add
          get_local 2
          i32.store
          get_local 0
          i32.const 40
          i32.add
          i32.const -1
          i32.store
          get_local 0
          i32.const 44
          i32.add
          i32.const 12
          i32.load
          i32.store
          get_local 0
          i32.const 24
          i32.add
          get_local 1
          i32.store
          get_local 0
          i32.const 456
          i32.add
          get_local 1
          i32.store
          get_local 0
          i32.const 472
          i32.add
          i32.const 0
          i32.store
          i32.const 32
          i32.load
          set_local 5
          get_local 0
          i32.const 476
          i32.add
          i32.const 0
          i32.store
          get_local 0
          i32.const 452
          i32.add
          get_local 5
          i32.const 4
          i32.or
          i32.store
          block  ;; label = @4
            loop  ;; label = @5
              get_local 3
              i32.const 256
              i32.eq
              br_if 1 (;@4;)
              get_local 0
              get_local 3
              i32.add
              tee_local 5
              i32.const 56
              i32.add
              get_local 5
              i32.const 48
              i32.add
              tee_local 6
              i32.store
              get_local 5
              i32.const 60
              i32.add
              get_local 6
              i32.store
              get_local 3
              i32.const 8
              i32.add
              set_local 3
              br 0 (;@5;)
            end
            unreachable
          end
          get_local 4
          get_local 4
          get_local 4
          i32.const -4
          i32.add
          i32.load
          i32.const -8
          i32.and
          i32.add
          i32.const -8
          i32.add
          tee_local 3
          get_local 1
          get_local 2
          i32.add
          i32.const -40
          i32.add
          get_local 3
          i32.sub
          call $.init_top
          get_local 4
          i32.const 8
          i32.store offset=460
        end
        get_local 7
      end
      i32.store
    end)
  (func $.malloc (type 3) (param i32) (result i32)
    i32.const 16
    i32.load
    get_local 0
    call $.mspace_malloc)
  (func $.free (type 5) (param i32)
    i32.const 16
    i32.load
    get_local 0
    call $.mspace_free)
  (func $.init_top (type 6) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      get_local 1
      i32.const -8
      get_local 1
      i32.sub
      i32.const 7
      i32.and
      i32.const 0
      get_local 1
      i32.const 8
      i32.add
      i32.const 7
      i32.and
      select
      tee_local 3
      i32.add
      tee_local 4
      get_local 2
      get_local 3
      i32.sub
      tee_local 3
      i32.const 1
      i32.or
      i32.store offset=4
      get_local 0
      i32.const 28
      i32.load
      i32.store offset=28
      get_local 0
      get_local 3
      i32.store offset=12
      get_local 0
      get_local 4
      i32.store offset=24
      get_local 1
      get_local 2
      i32.add
      i32.const 40
      i32.store offset=4
    end)
  (func $.segment_holding (type 1) (param i32 i32) (result i32)
    (local i32)
    block (result i32)  ;; label = @1
      get_local 0
      i32.const 448
      i32.add
      set_local 0
      block  ;; label = @2
        loop  ;; label = @3
          get_local 0
          i32.load
          tee_local 2
          get_local 1
          i32.le_u
          if  ;; label = @4
            get_local 2
            get_local 0
            i32.load offset=4
            i32.add
            get_local 1
            i32.gt_u
            br_if 2 (;@2;)
          end
          get_local 0
          i32.load offset=8
          tee_local 0
          br_if 0 (;@3;)
        end
        i32.const 0
        set_local 0
      end
      get_local 0
    end)
  (func $.morecore (type 3) (param i32) (result i32)
    (local i32)
    block (result i32)  ;; label = @1
      current_memory
      set_local 1
      block  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.const 1
          i32.ge_s
          if  ;; label = @4
            get_local 0
            i32.const -1
            i32.add
            i32.const 16
            i32.shr_s
            i32.const 1
            i32.add
            grow_memory
            br_if 1 (;@3;)
            i32.const -1
            return
          end
          get_local 0
          i32.const 0
          i32.lt_s
          br_if 1 (;@2;)
        end
        get_local 1
        i32.const 16
        i32.shl
        return
      end
      i32.const -1
    end)
  (func $start (type 2)
    i32.const 20
    grow_memory
    drop)
  (func $getByteAt (type 3) (param i32) (result i32)
    get_local 0
    i32.load8_u)
  (func $process (type 5) (param i32)
    (local i32)
    block  ;; label = @1
      get_local 0
      get_local 0
      call $getByteAt
      i32.const 3
      i32.div_u
      i32.const 255
      i32.and
      get_local 0
      i32.const 1
      i32.add
      call $getByteAt
      i32.const 3
      i32.div_u
      i32.const 255
      i32.and
      i32.add
      i32.const 255
      i32.and
      get_local 0
      i32.const 2
      i32.add
      call $getByteAt
      i32.const 3
      i32.div_u
      i32.const 255
      i32.and
      i32.add
      i32.const 255
      i32.and
      i32.const 0
      i32.or
      tee_local 1
      i32.store8
      get_local 0
      i32.const 1
      i32.add
      get_local 1
      i32.store8
      get_local 0
      i32.const 2
      i32.add
      get_local 1
      i32.store8
    end)
  (func $grayscaleDuff (type 4) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      i32.const 0
      set_local 2
      get_local 1
      i32.const 8
      i32.div_u
      i32.const 0
      i32.or
      set_local 3
      get_local 1
      i32.const 8
      i32.rem_u
      set_local 1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 1
                          i32.const 2
                          i32.const 3
                          i32.const 4
                          i32.const 5
                          i32.const 6
                          i32.const 7
                          i32.const -1
                          get_local 1
                          i32.const 1
                          i32.eq
                          select
                          get_local 1
                          i32.const 2
                          i32.eq
                          select
                          get_local 1
                          i32.const 3
                          i32.eq
                          select
                          get_local 1
                          i32.const 4
                          i32.eq
                          select
                          get_local 1
                          i32.const 5
                          i32.eq
                          select
                          get_local 1
                          i32.const 6
                          i32.eq
                          select
                          get_local 1
                          i32.const 7
                          i32.eq
                          select
                          i32.const 0
                          get_local 1
                          select
                          br_table 0 (;@11;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 5 (;@6;) 6 (;@5;) 7 (;@4;) 8 (;@3;)
                        end
                        get_local 2
                        i32.const 4
                        i32.add
                        tee_local 2
                        get_local 0
                        i32.add
                        call $process
                      end
                      get_local 2
                      i32.const 4
                      i32.add
                      tee_local 2
                      get_local 0
                      i32.add
                      call $process
                    end
                    get_local 2
                    i32.const 4
                    i32.add
                    tee_local 2
                    get_local 0
                    i32.add
                    call $process
                  end
                  get_local 2
                  i32.const 4
                  i32.add
                  tee_local 2
                  get_local 0
                  i32.add
                  call $process
                end
                get_local 2
                i32.const 4
                i32.add
                tee_local 2
                get_local 0
                i32.add
                call $process
              end
              get_local 2
              i32.const 4
              i32.add
              tee_local 2
              get_local 0
              i32.add
              call $process
            end
            get_local 2
            i32.const 4
            i32.add
            tee_local 2
            get_local 0
            i32.add
            call $process
          end
          get_local 2
          i32.const 4
          i32.add
          tee_local 2
          get_local 0
          i32.add
          call $process
        end
        i32.const 0
        set_local 1
        get_local 3
        i32.const 1
        i32.sub
        tee_local 3
        br_if 0 (;@2;)
      end
    end)
  (func $grayscale (type 4) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      i32.const 0
      set_local 2
      loop  ;; label = @2
        get_local 2
        get_local 1
        i32.lt_u
        if  ;; label = @3
          get_local 0
          get_local 2
          i32.add
          get_local 0
          get_local 2
          i32.add
          call $getByteAt
          i32.const 3
          i32.div_u
          i32.const 255
          i32.and
          get_local 0
          get_local 2
          i32.add
          i32.const 1
          i32.add
          call $getByteAt
          i32.const 3
          i32.div_u
          i32.const 255
          i32.and
          i32.add
          i32.const 255
          i32.and
          get_local 0
          get_local 2
          i32.add
          i32.const 2
          i32.add
          call $getByteAt
          i32.const 3
          i32.div_u
          i32.const 255
          i32.and
          i32.add
          i32.const 255
          i32.and
          i32.const 0
          i32.or
          tee_local 3
          i32.store8
          get_local 0
          get_local 2
          i32.add
          i32.const 1
          i32.add
          get_local 3
          i32.store8
          get_local 0
          get_local 2
          i32.add
          i32.const 2
          i32.add
          get_local 3
          i32.store8
          get_local 2
          i32.const 4
          i32.add
          set_local 2
          br 1 (;@2;)
        end
      end
    end)
  (func $getCurrentMemory (type 7) (result i32)
    current_memory)
  (func $.start (type 2)
    block  ;; label = @1
      call $.init
      call $start
    end)
  (table (;0;) 0 anyfunc)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "malloc" (func $.malloc))
  (export "free" (func $.free))
  (export "getByteAt" (func $getByteAt))
  (export "grayscaleDuff" (func $grayscaleDuff))
  (export "grayscale" (func $grayscale))
  (export "getCurrentMemory" (func $getCurrentMemory))
  (start 16)
  (data (i32.const 8) " "))
