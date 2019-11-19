
package Paws::EKS::DescribeUpdateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EKS::Types qw/EKS_Update/;
  has Update => (is => 'ro', isa => EKS_Update);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Update' => 'update'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Update' => {
                             'type' => 'EKS_Update',
                             'class' => 'Paws::EKS::Update'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeUpdateResponse

=head1 ATTRIBUTES


=head2 Update => EKS_Update

The full description of the specified update.


=head2 _request_id => Str


=cut

