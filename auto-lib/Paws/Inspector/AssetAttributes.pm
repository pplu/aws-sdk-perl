# Generated from default/object.tt
package Paws::Inspector::AssetAttributes;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Int/;
  use Paws::Inspector::Types qw/Inspector_NetworkInterface Inspector_Tag/;
  has AgentId => (is => 'ro', isa => Str);
  has AmiId => (is => 'ro', isa => Str);
  has AutoScalingGroup => (is => 'ro', isa => Str);
  has Hostname => (is => 'ro', isa => Str);
  has Ipv4Addresses => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[Inspector_NetworkInterface]);
  has SchemaVersion => (is => 'ro', isa => Int, required => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Inspector_Tag]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AmiId' => 'amiId',
                       'SchemaVersion' => 'schemaVersion',
                       'Hostname' => 'hostname',
                       'NetworkInterfaces' => 'networkInterfaces',
                       'Tags' => 'tags',
                       'AgentId' => 'agentId',
                       'Ipv4Addresses' => 'ipv4Addresses',
                       'AutoScalingGroup' => 'autoScalingGroup'
                     },
  'IsRequired' => {
                    'SchemaVersion' => 1
                  },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::Inspector::Tag',
                           'type' => 'ArrayRef[Inspector_Tag]'
                         },
               'NetworkInterfaces' => {
                                        'type' => 'ArrayRef[Inspector_NetworkInterface]',
                                        'class' => 'Paws::Inspector::NetworkInterface'
                                      },
               'Hostname' => {
                               'type' => 'Str'
                             },
               'AgentId' => {
                              'type' => 'Str'
                            },
               'AutoScalingGroup' => {
                                       'type' => 'Str'
                                     },
               'Ipv4Addresses' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'AmiId' => {
                            'type' => 'Str'
                          },
               'SchemaVersion' => {
                                    'type' => 'Int'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssetAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssetAttributes object:

  $service_obj->Method(Att1 => { AgentId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssetAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentId

=head1 DESCRIPTION

A collection of attributes of the host from which the finding is
generated.

=head1 ATTRIBUTES


=head2 AgentId => Str

  The ID of the agent that is installed on the EC2 instance where the
finding is generated.


=head2 AmiId => Str

  The ID of the Amazon Machine Image (AMI) that is installed on the EC2
instance where the finding is generated.


=head2 AutoScalingGroup => Str

  The Auto Scaling group of the EC2 instance where the finding is
generated.


=head2 Hostname => Str

  The hostname of the EC2 instance where the finding is generated.


=head2 Ipv4Addresses => ArrayRef[Str|Undef]

  The list of IP v4 addresses of the EC2 instance where the finding is
generated.


=head2 NetworkInterfaces => ArrayRef[Inspector_NetworkInterface]

  An array of the network interfaces interacting with the EC2 instance
where the finding is generated.


=head2 B<REQUIRED> SchemaVersion => Int

  The schema version of this data type.


=head2 Tags => ArrayRef[Inspector_Tag]

  The tags related to the EC2 instance where the finding is generated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

