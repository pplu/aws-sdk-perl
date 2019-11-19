
package Paws::IoT::DescribeAuditFindingResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_AuditFinding/;
  has Finding => (is => 'ro', isa => IoT_AuditFinding);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Finding' => 'finding'
                     },
  'types' => {
               'Finding' => {
                              'type' => 'IoT_AuditFinding',
                              'class' => 'Paws::IoT::AuditFinding'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuditFindingResponse

=head1 ATTRIBUTES


=head2 Finding => IoT_AuditFinding




=head2 _request_id => Str


=cut

