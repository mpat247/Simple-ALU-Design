library verilog;
use verilog.vl_types.all;
entity lab6problem3_vlg_check_tst is
    port(
        Result          : in     vl_logic_vector(0 to 6);
        student_id      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end lab6problem3_vlg_check_tst;
