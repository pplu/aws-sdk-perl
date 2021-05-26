
package Paws::Athena::UpdateWorkGroup;
  use Moose;
  has ConfigurationUpdates => (is => 'ro', isa => 'Paws::Athena::WorkGroupConfigurationUpdates');
  has Description => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has WorkGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::UpdateWorkGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::UpdateWorkGroup - Arguments for method UpdateWorkGroup on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkGroup on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method UpdateWorkGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkGroup.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $UpdateWorkGroupOutput = $athena->UpdateWorkGroup(
      WorkGroup            => 'MyWorkGroupName',
      ConfigurationUpdates => {
        BytesScannedCutoffPerQuery       => 1,    # min: 10000000; OPTIONAL
        EnforceWorkGroupConfiguration    => 1,    # OPTIONAL
        PublishCloudWatchMetricsEnabled  => 1,    # OPTIONAL
        RemoveBytesScannedCutoffPerQuery => 1,    # OPTIONAL
        RequesterPaysEnabled             => 1,    # OPTIONAL
        ResultConfigurationUpdates       => {
          EncryptionConfiguration => {
            EncryptionOption => 'SSE_S3',     # values: SSE_S3, SSE_KMS, CSE_KMS
            KmsKey           => 'MyString',   # OPTIONAL
          },    # OPTIONAL
          OutputLocation                => 'MyString',    # OPTIONAL
          RemoveEncryptionConfiguration => 1,             # OPTIONAL
          RemoveOutputLocation          => 1,             # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyWorkGroupDescriptionString',    # OPTIONAL
      State       => 'ENABLED',                         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/UpdateWorkGroup>

=head1 ATTRIBUTES


=head2 ConfigurationUpdates => L<Paws::Athena::WorkGroupConfigurationUpdates>

The workgroup configuration that will be updated for the given
workgroup.



=head2 Description => Str

The workgroup description.



=head2 State => Str

The workgroup state that will be updated for the given workgroup.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> WorkGroup => Str

The specified workgroup that will be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkGroup in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

