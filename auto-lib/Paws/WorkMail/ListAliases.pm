
package Paws::WorkMail::ListAliases;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAliases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::ListAliasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListAliases - Arguments for method ListAliases on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAliases on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method ListAliases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAliases.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $ListAliasesResponse = $workmail->ListAliases(
      EntityId       => 'MyWorkMailIdentifier',
      OrganizationId => 'MyOrganizationId',
      MaxResults     => 1,                        # OPTIONAL
      NextToken      => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $Aliases   = $ListAliasesResponse->Aliases;
    my $NextToken = $ListAliasesResponse->NextToken;

    # Returns a L<Paws::WorkMail::ListAliasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/ListAliases>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The identifier for the entity for which to list the aliases.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results. The first call
does not contain any tokens.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the entity exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAliases in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

