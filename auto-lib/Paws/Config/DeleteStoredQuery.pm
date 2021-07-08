
package Paws::Config::DeleteStoredQuery;
  use Moose;
  has QueryName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStoredQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DeleteStoredQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeleteStoredQuery - Arguments for method DeleteStoredQuery on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStoredQuery on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DeleteStoredQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStoredQuery.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DeleteStoredQueryResponse = $config->DeleteStoredQuery(
      QueryName => 'MyQueryName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DeleteStoredQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryName => Str

The name of the query that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStoredQuery in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

