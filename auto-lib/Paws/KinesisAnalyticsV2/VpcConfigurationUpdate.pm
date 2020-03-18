package Paws::KinesisAnalyticsV2::VpcConfigurationUpdate;
  use Moose;
  has SecurityGroupIdUpdates => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetIdUpdates => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcConfigurationId => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::VpcConfigurationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::VpcConfigurationUpdate object:

  $service_obj->Method(Att1 => { SecurityGroupIdUpdates => $value, ..., VpcConfigurationId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::VpcConfigurationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupIdUpdates

=head1 DESCRIPTION

Describes updates to the VPC configuration used by the application.

=head1 ATTRIBUTES


=head2 SecurityGroupIdUpdates => ArrayRef[Str|Undef]

  Describes updates to the array of SecurityGroup
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html)
IDs used by the VPC configuration.


=head2 SubnetIdUpdates => ArrayRef[Str|Undef]

  Describes updates to the array of Subnet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html)
IDs used by the VPC configuration.


=head2 B<REQUIRED> VpcConfigurationId => Str

  Describes an update to the ID of the VPC configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

