
package Paws::Quicksight::DeleteTemplate;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'version-number');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/templates/{TemplateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteTemplate - Arguments for method DeleteTemplate on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTemplate on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTemplate.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteTemplateResponse = $quicksight->DeleteTemplate(
      AwsAccountId  => 'MyAwsAccountId',
      TemplateId    => 'MyRestrictiveResourceId',
      VersionNumber => 1,                           # OPTIONAL
    );

    # Results:
    my $Arn        = $DeleteTemplateResponse->Arn;
    my $RequestId  = $DeleteTemplateResponse->RequestId;
    my $Status     = $DeleteTemplateResponse->Status;
    my $TemplateId = $DeleteTemplateResponse->TemplateId;

    # Returns a L<Paws::Quicksight::DeleteTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

AWS account ID that contains the template you are deleting.



=head2 B<REQUIRED> TemplateId => Str

An ID for the template you want to delete.



=head2 VersionNumber => Int

Specifies the version of the template that you want to delete. If you
don't provide a version number, C<DeleteTemplate> deletes all versions
of the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTemplate in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

