# Generated from callargs_class.tt

package Paws::CloudFormation::ListTypeVersions;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudFormation::Types qw//;
  has Arn => (is => 'ro', isa => Str, predicate => 1);
  has DeprecatedStatus => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Type => (is => 'ro', isa => Str, predicate => 1);
  has TypeName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTypeVersions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudFormation::ListTypeVersionsOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'ListTypeVersionsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'Arn' => {
                          'type' => 'Str'
                        },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'TypeName' => {
                               'type' => 'Str'
                             },
               'DeprecatedStatus' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListTypeVersions - Arguments for method ListTypeVersions on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTypeVersions on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListTypeVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTypeVersions.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListTypeVersionsOutput = $cloudformation->ListTypeVersions(
      Arn              => 'MyPrivateTypeArn',    # OPTIONAL
      DeprecatedStatus => 'LIVE',                # OPTIONAL
      MaxResults       => 1,                     # OPTIONAL
      NextToken        => 'MyNextToken',         # OPTIONAL
      Type             => 'RESOURCE',            # OPTIONAL
      TypeName         => 'MyTypeName',          # OPTIONAL
    );

    # Results:
    my $NextToken            = $ListTypeVersionsOutput->NextToken;
    my $TypeVersionSummaries = $ListTypeVersionsOutput->TypeVersionSummaries;

    # Returns a L<Paws::CloudFormation::ListTypeVersionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListTypeVersions>

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the type for which you want version
summary information.

Conditional: You must specify C<TypeName> or C<Arn>.



=head2 DeprecatedStatus => Str

The deprecation status of the type versions that you want to get
summary information about.

Valid values include:

=over

=item *

C<LIVE>: The type version is registered and can be used in
CloudFormation operations, dependent on its provisioning behavior and
visibility scope.

=item *

C<DEPRECATED>: The type version has been deregistered and can no longer
be used in CloudFormation operations.

=back


Valid values are: C<"LIVE">, C<"DEPRECATED">

=head2 MaxResults => Int

The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

If the previous paginated request didn't return all of the remaining
results, the response object's C<NextToken> parameter value is set to a
token. To retrieve the next set of results, call this action again and
assign that token to the request object's C<NextToken> parameter. If
there are no remaining results, the previous response object's
C<NextToken> parameter is set to C<null>.



=head2 Type => Str

The kind of the type.

Currently the only valid value is C<RESOURCE>.

Valid values are: C<"RESOURCE">

=head2 TypeName => Str

The name of the type for which you want version summary information.

Conditional: You must specify C<TypeName> or C<Arn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTypeVersions in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

