
package Paws::RedShift::CreateHsmConfiguration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has HsmIpAddress => (is => 'ro', isa => 'Str', required => 1);
  has HsmPartitionName => (is => 'ro', isa => 'Str', required => 1);
  has HsmPartitionPassword => (is => 'ro', isa => 'Str', required => 1);
  has HsmServerPublicCertificate => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHsmConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CreateHsmConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateHsmConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateHsmConfiguration - Arguments for method CreateHsmConfiguration on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHsmConfiguration on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateHsmConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHsmConfiguration.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $CreateHsmConfigurationResult = $redshift->CreateHsmConfiguration(
      Description                => 'MyString',
      HsmConfigurationIdentifier => 'MyString',
      HsmIpAddress               => 'MyString',
      HsmPartitionName           => 'MyString',
      HsmPartitionPassword       => 'MyString',
      HsmServerPublicCertificate => 'MyString',
      Tags                       => [
        {
          Key   => 'MyString',    # max: 2147483647
          Value => 'MyString',    # max: 2147483647
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $HsmConfiguration = $CreateHsmConfigurationResult->HsmConfiguration;

    # Returns a L<Paws::RedShift::CreateHsmConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateHsmConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

A text description of the HSM configuration to be created.



=head2 B<REQUIRED> HsmConfigurationIdentifier => Str

The identifier to be assigned to the new Amazon Redshift HSM
configuration.



=head2 B<REQUIRED> HsmIpAddress => Str

The IP address that the Amazon Redshift cluster must use to access the
HSM.



=head2 B<REQUIRED> HsmPartitionName => Str

The name of the partition in the HSM where the Amazon Redshift clusters
will store their database encryption keys.



=head2 B<REQUIRED> HsmPartitionPassword => Str

The password required to access the HSM partition.



=head2 B<REQUIRED> HsmServerPublicCertificate => Str

The HSMs public certificate file. When using Cloud HSM, the file name
is server.pem.



=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

A list of tag instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHsmConfiguration in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

