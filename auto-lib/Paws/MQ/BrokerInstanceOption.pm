# Generated from default/object.tt
package Paws::MQ::BrokerInstanceOption;
  use Moo;
  use Types::Standard qw/ArrayRef Str Undef/;
  use Paws::MQ::Types qw/MQ_AvailabilityZone/;
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[MQ_AvailabilityZone]);
  has EngineType => (is => 'ro', isa => Str);
  has HostInstanceType => (is => 'ro', isa => Str);
  has SupportedEngineVersions => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AvailabilityZones' => {
                                        'class' => 'Paws::MQ::AvailabilityZone',
                                        'type' => 'ArrayRef[MQ_AvailabilityZone]'
                                      },
               'HostInstanceType' => {
                                       'type' => 'Str'
                                     },
               'SupportedEngineVersions' => {
                                              'type' => 'ArrayRef[Str|Undef]'
                                            },
               'EngineType' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'SupportedEngineVersions' => 'supportedEngineVersions',
                       'AvailabilityZones' => 'availabilityZones',
                       'HostInstanceType' => 'hostInstanceType',
                       'EngineType' => 'engineType'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::BrokerInstanceOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::BrokerInstanceOption object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., SupportedEngineVersions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::BrokerInstanceOption object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Option for host instance type.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[MQ_AvailabilityZone]

  The list of available az.


=head2 EngineType => Str

  The type of broker engine.


=head2 HostInstanceType => Str

  The type of broker instance.


=head2 SupportedEngineVersions => ArrayRef[Str|Undef]

  The list of supported engine versions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

