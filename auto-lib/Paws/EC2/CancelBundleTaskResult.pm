
package Paws::EC2::CancelBundleTaskResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_BundleTask/;
  has BundleTask => (is => 'ro', isa => EC2_BundleTask);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BundleTask' => {
                                 'class' => 'Paws::EC2::BundleTask',
                                 'type' => 'EC2_BundleTask'
                               }
             },
  'NameInRequest' => {
                       'BundleTask' => 'bundleInstanceTask'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelBundleTaskResult

=head1 ATTRIBUTES


=head2 BundleTask => EC2_BundleTask

Information about the bundle task.


=head2 _request_id => Str


=cut

