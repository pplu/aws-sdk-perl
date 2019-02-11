
package Paws::ECS::ListAccountSettings;
  use Moose;
  has EffectiveSettings => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'effectiveSettings' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PrincipalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalArn' );
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccountSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::ListAccountSettingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListAccountSettings - Arguments for method ListAccountSettings on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccountSettings on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method ListAccountSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccountSettings.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $ListAccountSettingsResponse = $ecs->ListAccountSettings(
      EffectiveSettings => 1,                         # OPTIONAL
      MaxResults        => 1,                         # OPTIONAL
      Name              => 'serviceLongArnFormat',    # OPTIONAL
      NextToken         => 'MyString',                # OPTIONAL
      PrincipalArn      => 'MyString',                # OPTIONAL
      Value             => 'MyString',                # OPTIONAL
    );

    # Results:
    my $NextToken = $ListAccountSettingsResponse->NextToken;
    my $Settings  = $ListAccountSettingsResponse->Settings;

    # Returns a L<Paws::ECS::ListAccountSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/ListAccountSettings>

=head1 ATTRIBUTES


=head2 EffectiveSettings => Bool

Specifies whether to return the effective settings. If C<true>, the
account settings for the root user or the default setting for the
C<principalArn>. If C<false>, the account settings for the
C<principalArn> are returned if they are set. Otherwise, no account
settings are returned.



=head2 MaxResults => Int

The maximum number of account setting results returned by
C<ListAccountSettings> in paginated output. When this parameter is
used, C<ListAccountSettings> only returns C<maxResults> results in a
single page along with a C<nextToken> response element. The remaining
results of the initial request can be seen by sending another
C<ListAccountSettings> request with the returned C<nextToken> value.
This value can be between 1 and 10. If this parameter is not used, then
C<ListAccountSettings> returns up to 10 results and a C<nextToken>
value if applicable.



=head2 Name => Str

The resource name you want to list the account settings for.

Valid values are: C<"serviceLongArnFormat">, C<"taskLongArnFormat">, C<"containerInstanceLongArnFormat">

=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListAccountSettings> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 PrincipalArn => Str

The ARN of the principal, which can be an IAM user, IAM role, or the
root user. If this field is omitted, the account settings are listed
only for the authenticated user.



=head2 Value => Str

The value of the account settings with which to filter results. You
must also specify an account setting name to use this parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccountSettings in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

