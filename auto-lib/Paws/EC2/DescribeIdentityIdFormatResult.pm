
package Paws::EC2::DescribeIdentityIdFormatResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_IdFormat/;
  has Statuses => (is => 'ro', isa => ArrayRef[EC2_IdFormat]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Statuses' => {
                               'class' => 'Paws::EC2::IdFormat',
                               'type' => 'ArrayRef[EC2_IdFormat]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Statuses' => 'statusSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIdentityIdFormatResult

=head1 ATTRIBUTES


=head2 Statuses => ArrayRef[EC2_IdFormat]

Information about the ID format for the resources.


=head2 _request_id => Str


=cut

