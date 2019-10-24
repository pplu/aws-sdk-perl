
package Paws::IoT::DescribeEventConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_EventConfigurations/;
  has CreationDate => (is => 'ro', isa => Str);
  has EventConfigurations => (is => 'ro', isa => IoT_EventConfigurations);
  has LastModifiedDate => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'EventConfigurations' => {
                                          'class' => 'Paws::IoT::EventConfigurations',
                                          'type' => 'IoT_EventConfigurations'
                                        },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LastModifiedDate' => 'lastModifiedDate',
                       'EventConfigurations' => 'eventConfigurations',
                       'CreationDate' => 'creationDate'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeEventConfigurationsResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The creation date of the event configuration.


=head2 EventConfigurations => IoT_EventConfigurations

The event configurations.


=head2 LastModifiedDate => Str

The date the event configurations were last modified.


=head2 _request_id => Str


=cut

