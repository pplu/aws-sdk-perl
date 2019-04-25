
package Paws::SSM::ListAssociationVersions;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociationVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListAssociationVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListAssociationVersions - Arguments for method ListAssociationVersions on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociationVersions on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListAssociationVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociationVersions.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListAssociationVersionsResult = $ssm->ListAssociationVersions(
      AssociationId => 'MyAssociationId',
      MaxResults    => 1,                   # OPTIONAL
      NextToken     => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $AssociationVersions =
      $ListAssociationVersionsResult->AssociationVersions;
    my $NextToken = $ListAssociationVersionsResult->NextToken;

    # Returns a L<Paws::SSM::ListAssociationVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListAssociationVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The association ID for which you want to view all versions.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociationVersions in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

