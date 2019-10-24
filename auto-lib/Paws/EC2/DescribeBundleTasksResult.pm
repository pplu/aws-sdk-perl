
package Paws::EC2::DescribeBundleTasksResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_BundleTask/;
  has BundleTasks => (is => 'ro', isa => ArrayRef[EC2_BundleTask]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BundleTasks' => {
                                  'class' => 'Paws::EC2::BundleTask',
                                  'type' => 'ArrayRef[EC2_BundleTask]'
                                }
             },
  'NameInRequest' => {
                       'BundleTasks' => 'bundleInstanceTasksSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeBundleTasksResult

=head1 ATTRIBUTES


=head2 BundleTasks => ArrayRef[EC2_BundleTask]

Information about the bundle tasks.


=head2 _request_id => Str


=cut

