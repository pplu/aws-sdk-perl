# Generated from default/object.tt
package Paws::MediaConnect::Flow;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConnect::Types qw/MediaConnect_Entitlement MediaConnect_Source MediaConnect_Output/;
  has AvailabilityZone => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str);
  has EgressIp => (is => 'ro', isa => Str);
  has Entitlements => (is => 'ro', isa => ArrayRef[MediaConnect_Entitlement], required => 1);
  has FlowArn => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Outputs => (is => 'ro', isa => ArrayRef[MediaConnect_Output], required => 1);
  has Source => (is => 'ro', isa => MediaConnect_Source, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Outputs' => {
                              'class' => 'Paws::MediaConnect::Output',
                              'type' => 'ArrayRef[MediaConnect_Output]'
                            },
               'Entitlements' => {
                                   'class' => 'Paws::MediaConnect::Entitlement',
                                   'type' => 'ArrayRef[MediaConnect_Entitlement]'
                                 },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'EgressIp' => {
                               'type' => 'Str'
                             },
               'Source' => {
                             'class' => 'Paws::MediaConnect::Source',
                             'type' => 'MediaConnect_Source'
                           },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'Outputs' => 'outputs',
                       'Entitlements' => 'entitlements',
                       'AvailabilityZone' => 'availabilityZone',
                       'EgressIp' => 'egressIp',
                       'Source' => 'source',
                       'Description' => 'description',
                       'Name' => 'name',
                       'FlowArn' => 'flowArn'
                     },
  'IsRequired' => {
                    'Status' => 1,
                    'Source' => 1,
                    'Outputs' => 1,
                    'Name' => 1,
                    'FlowArn' => 1,
                    'Entitlements' => 1,
                    'AvailabilityZone' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Flow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Flow object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Flow object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

The settings for a flow, including its source, outputs, and
entitlements.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

  The Availability Zone that you want to create the flow in. These
options are limited to the Availability Zones within the current AWS.


=head2 Description => Str

  A description of the flow. This value is not used or seen outside of
the current AWS Elemental MediaConnect account.


=head2 EgressIp => Str

  The IP address from which video will be sent to output destinations.


=head2 B<REQUIRED> Entitlements => ArrayRef[MediaConnect_Entitlement]

  The entitlements in this flow.


=head2 B<REQUIRED> FlowArn => Str

  The Amazon Resource Name (ARN), a unique identifier for any AWS
resource, of the flow.


=head2 B<REQUIRED> Name => Str

  The name of the flow.


=head2 B<REQUIRED> Outputs => ArrayRef[MediaConnect_Output]

  The outputs in this flow.


=head2 B<REQUIRED> Source => MediaConnect_Source

  


=head2 B<REQUIRED> Status => Str

  The current status of the flow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

