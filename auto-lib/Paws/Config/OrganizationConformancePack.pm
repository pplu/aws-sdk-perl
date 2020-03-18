package Paws::Config::OrganizationConformancePack;
  use Moose;
  has ConformancePackInputParameters => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConformancePackInputParameter]');
  has DeliveryS3Bucket => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryS3KeyPrefix => (is => 'ro', isa => 'Str');
  has ExcludedAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastUpdateTime => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationConformancePackArn => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationConformancePackName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::OrganizationConformancePack

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::OrganizationConformancePack object:

  $service_obj->Method(Att1 => { ConformancePackInputParameters => $value, ..., OrganizationConformancePackName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::OrganizationConformancePack object:

  $result = $service_obj->Method(...);
  $result->Att1->ConformancePackInputParameters

=head1 DESCRIPTION

An organization conformance pack that has information about conformance
packs that AWS Config creates in member accounts.

=head1 ATTRIBUTES


=head2 ConformancePackInputParameters => ArrayRef[L<Paws::Config::ConformancePackInputParameter>]

  A list of C<ConformancePackInputParameter> objects.


=head2 B<REQUIRED> DeliveryS3Bucket => Str

  Location of an Amazon S3 bucket where AWS Config can deliver evaluation
results and conformance pack template that is used to create a pack.


=head2 DeliveryS3KeyPrefix => Str

  Any folder structure you want to add to an Amazon S3 bucket.


=head2 ExcludedAccounts => ArrayRef[Str|Undef]

  A comma-separated list of accounts excluded from organization
conformance pack.


=head2 B<REQUIRED> LastUpdateTime => Str

  Last time when organization conformation pack was updated.


=head2 B<REQUIRED> OrganizationConformancePackArn => Str

  Amazon Resource Name (ARN) of organization conformance pack.


=head2 B<REQUIRED> OrganizationConformancePackName => Str

  The name you assign to an organization conformance pack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

