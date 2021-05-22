
package Paws::Config::PutStoredQuery;
  use Moose;
  has StoredQuery => (is => 'ro', isa => 'Paws::Config::StoredQuery', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Config::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutStoredQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutStoredQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutStoredQuery - Arguments for method PutStoredQuery on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutStoredQuery on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutStoredQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutStoredQuery.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutStoredQueryResponse = $config->PutStoredQuery(
      StoredQuery => {
        QueryName   => 'MyQueryName',           # min: 1, max: 64
        Description => 'MyQueryDescription',    # max: 256; OPTIONAL
        Expression  => 'MyQueryExpression',     # min: 1, max: 4096; OPTIONAL
        QueryArn    => 'MyQueryArn',            # min: 1, max: 500; OPTIONAL
        QueryId     => 'MyQueryId',             # min: 1, max: 36; OPTIONAL
      },
      Tags => [
        {
          Key   => 'MyTagKey',                  # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',                # max: 256; OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
    );

    # Results:
    my $QueryArn = $PutStoredQueryResponse->QueryArn;

    # Returns a L<Paws::Config::PutStoredQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutStoredQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StoredQuery => L<Paws::Config::StoredQuery>

A list of C<StoredQuery> objects. The mandatory fields are C<QueryName>
and C<Expression>.

When you are creating a query, you must provide a query name and an
expression. When you are updating a query, you must provide a query
name but updating the description is optional.



=head2 Tags => ArrayRef[L<Paws::Config::Tag>]

A list of C<Tags> object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutStoredQuery in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

