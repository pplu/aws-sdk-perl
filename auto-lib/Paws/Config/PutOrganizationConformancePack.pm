
package Paws::Config::PutOrganizationConformancePack;
  use Moose;
  has ConformancePackInputParameters => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConformancePackInputParameter]');
  has DeliveryS3Bucket => (is => 'ro', isa => 'Str');
  has DeliveryS3KeyPrefix => (is => 'ro', isa => 'Str');
  has ExcludedAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OrganizationConformancePackName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateS3Uri => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutOrganizationConformancePack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutOrganizationConformancePackResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutOrganizationConformancePack - Arguments for method PutOrganizationConformancePack on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutOrganizationConformancePack on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutOrganizationConformancePack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutOrganizationConformancePack.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutOrganizationConformancePackResponse =
      $config->PutOrganizationConformancePack(
      OrganizationConformancePackName => 'MyOrganizationConformancePackName',
      ConformancePackInputParameters  => [
        {
          ParameterName  => 'MyParameterName',     # max: 255
          ParameterValue => 'MyParameterValue',    # max: 4096

        },
        ...
      ],                                           # OPTIONAL
      DeliveryS3Bucket    => 'MyDeliveryS3Bucket',       # OPTIONAL
      DeliveryS3KeyPrefix => 'MyDeliveryS3KeyPrefix',    # OPTIONAL
      ExcludedAccounts    => [ 'MyAccountId', ... ],     # OPTIONAL
      TemplateBody        => 'MyTemplateBody',           # OPTIONAL
      TemplateS3Uri       => 'MyTemplateS3Uri',          # OPTIONAL
      );

    # Results:
    my $OrganizationConformancePackArn =
      $PutOrganizationConformancePackResponse->OrganizationConformancePackArn;

    # Returns a L<Paws::Config::PutOrganizationConformancePackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutOrganizationConformancePack>

=head1 ATTRIBUTES


=head2 ConformancePackInputParameters => ArrayRef[L<Paws::Config::ConformancePackInputParameter>]

A list of C<ConformancePackInputParameter> objects.



=head2 DeliveryS3Bucket => Str

Amazon S3 bucket where AWS Config stores conformance pack templates.

This field is optional. If used, it must be prefixed with
C<awsconfigconforms>.



=head2 DeliveryS3KeyPrefix => Str

The prefix for the Amazon S3 bucket.

This field is optional.



=head2 ExcludedAccounts => ArrayRef[Str|Undef]

A list of AWS accounts to be excluded from an organization conformance
pack while deploying a conformance pack.



=head2 B<REQUIRED> OrganizationConformancePackName => Str

Name of the organization conformance pack you want to create.



=head2 TemplateBody => Str

A string containing full conformance pack template body. Structure
containing the template body with a minimum length of 1 byte and a
maximum length of 51,200 bytes.



=head2 TemplateS3Uri => Str

Location of file containing the template body. The uri must point to
the conformance pack template (max size: 300 KB).

You must have access to read Amazon S3 bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutOrganizationConformancePack in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

