
package Paws::MobileHub::DescribeProjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MobileHub::Types qw/MobileHub_ProjectDetails/;
  has Details => (is => 'ro', isa => MobileHub_ProjectDetails);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Details' => 'details'
                     },
  'types' => {
               'Details' => {
                              'type' => 'MobileHub_ProjectDetails',
                              'class' => 'Paws::MobileHub::ProjectDetails'
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

Paws::MobileHub::DescribeProjectResult

=head1 ATTRIBUTES


=head2 Details => MobileHub_ProjectDetails




=head2 _request_id => Str


=cut

