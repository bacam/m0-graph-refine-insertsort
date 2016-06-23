theory Insertsort
imports CTranslation "~~/../l4v/tools/asmrefine/SimplExport"
begin

install_C_file "insertsort.c"

ML {*
  val csenv =
    let
    val SOME x = CalculateState.get_csenv @{theory} "insertsort.c"
    in fn () => x
    end
*}

setup {* DefineGlobalsList.define_globals_list_i "insertsort.c" @{typ globals} *}

lemmas global_data_defs = insertsort_global_addresses.global_data_defs

context insertsort_global_addresses begin
ML {*
  let val out = openOut_relative @{theory} "insertsort_C_graph.txt"
      val () = emit_C_everything @{context} (csenv()) out
  in TextIO.closeOut out
  end
*}
end

end
