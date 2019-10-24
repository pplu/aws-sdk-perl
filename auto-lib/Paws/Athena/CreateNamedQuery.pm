# Generated from json/callargs_class.tt

package Paws::Athena::CreateNamedQuery;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Athena::Types qw//;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has Database => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has QueryString => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has WorkGroup => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateNamedQuery');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Athena::CreateNamedQueryOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WorkGroup' => {
                                'type' => 'Str'
                              },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Database' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'QueryString' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Database' => 1,
                    'Name' => 1,
                    'QueryString' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreateNamedQuery - Arguments for method CreateNamedQuery on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNamedQuery on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method CreateNamedQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNamedQuery.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $CreateNamedQueryOutput = $athena->CreateNamedQuery(
      Database           => 'MyDatabaseString',
      Name               => 'MyNameString',
      QueryString        => 'MyQueryString',
      ClientRequestToken => 'MyIdempotencyToken',     # OPTIONAL
      Description        => 'MyDescriptionString',    # OPTIONAL
      WorkGroup          => 'MyWorkGroupName',        # OPTIONAL
    );

    # Results:
    my $NamedQueryId = $CreateNamedQueryOutput->NamedQueryId;

    # Returns a L<Paws::Athena::CreateNamedQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/CreateNamedQuery>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique case-sensitive string used to ensure the request to create the
query is idempotent (executes only once). If another
C<CreateNamedQuery> request is received, the same response is returned
and another query is not created. If a parameter has changed, for
example, the C<QueryString>, an error is returned.

This token is listed as not required because AWS SDKs (for example the
AWS SDK for Java) auto-generate the token for users. If you are not
using the AWS SDK or the AWS CLI, you must provide this token or the
action will fail.



=head2 B<REQUIRED> Database => Str

The database to which the query belongs.



=head2 Description => Str

The query description.



=head2 B<REQUIRED> Name => Str

The query name.



=head2 B<REQUIRED> QueryString => Str

The contents of the query with all query statements.



=head2 WorkGroup => Str

The name of the workgroup in which the named query is being created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNamedQuery in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

