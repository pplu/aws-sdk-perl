
package Paws::EC2::GetConsoleScreenshotResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has ImageData => (is => 'ro', isa => Str);
  has InstanceId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'ImageData' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'InstanceId' => 'instanceId',
                       'ImageData' => 'imageData'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetConsoleScreenshotResult

=head1 ATTRIBUTES


=head2 ImageData => Str

The data that comprises the image.


=head2 InstanceId => Str

The ID of the instance.


=head2 _request_id => Str


=cut

