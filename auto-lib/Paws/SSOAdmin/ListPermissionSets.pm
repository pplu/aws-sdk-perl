
package Paws::SSOAdmin::ListPermissionSets;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPermissionSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::ListPermissionSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListPermissionSets - Arguments for method ListPermissionSets on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPermissionSets on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method ListPermissionSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPermissionSets.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $ListPermissionSetsResponse = $sso->ListPermissionSets(
      InstanceArn => 'MyInstanceArn',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyToken',         # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListPermissionSetsResponse->NextToken;
    my $PermissionSets = $ListPermissionSetsResponse->PermissionSets;

    # Returns a L<Paws::SSOAdmin::ListPermissionSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/ListPermissionSets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceArn => Str

The ARN of the SSO instance under which the operation will be executed.
For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces in the I<AWS General Reference>.



=head2 MaxResults => Int

The maximum number of results to display for the assignment.



=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPermissionSets in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

