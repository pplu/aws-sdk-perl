
package Paws::Amplify::DeleteDomainAssociation;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomainAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/domains/{domainName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::DeleteDomainAssociationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::DeleteDomainAssociation - Arguments for method DeleteDomainAssociation on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDomainAssociation on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method DeleteDomainAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDomainAssociation.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $DeleteDomainAssociationResult = $amplify->DeleteDomainAssociation(
      AppId      => 'MyAppId',
      DomainName => 'MyDomainName',

    );

    # Results:
    my $DomainAssociation = $DeleteDomainAssociationResult->DomainAssociation;

    # Returns a L<Paws::Amplify::DeleteDomainAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/DeleteDomainAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 B<REQUIRED> DomainName => Str

Name of the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDomainAssociation in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

