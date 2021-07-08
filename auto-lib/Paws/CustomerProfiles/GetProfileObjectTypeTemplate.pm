
package Paws::CustomerProfiles::GetProfileObjectTypeTemplate;
  use Moose;
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProfileObjectTypeTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/templates/{TemplateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetProfileObjectTypeTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetProfileObjectTypeTemplate - Arguments for method GetProfileObjectTypeTemplate on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProfileObjectTypeTemplate on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetProfileObjectTypeTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProfileObjectTypeTemplate.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetProfileObjectTypeTemplateResponse =
      $profile->GetProfileObjectTypeTemplate(
      TemplateId => 'Myname',

      );

    # Results:
    my $AllowProfileCreation =
      $GetProfileObjectTypeTemplateResponse->AllowProfileCreation;
    my $Fields       = $GetProfileObjectTypeTemplateResponse->Fields;
    my $Keys         = $GetProfileObjectTypeTemplateResponse->Keys;
    my $SourceName   = $GetProfileObjectTypeTemplateResponse->SourceName;
    my $SourceObject = $GetProfileObjectTypeTemplateResponse->SourceObject;
    my $TemplateId   = $GetProfileObjectTypeTemplateResponse->TemplateId;

# Returns a L<Paws::CustomerProfiles::GetProfileObjectTypeTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetProfileObjectTypeTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateId => Str

A unique identifier for the object template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProfileObjectTypeTemplate in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

