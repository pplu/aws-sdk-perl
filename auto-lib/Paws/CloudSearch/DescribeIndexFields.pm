
package Paws::CloudSearch::DescribeIndexFields;
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIndexFields');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::DescribeIndexFieldsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeIndexFieldsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeIndexFields - Arguments for method DescribeIndexFields on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIndexFields on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method DescribeIndexFields.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIndexFields.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $DescribeIndexFieldsResponse = $cloudsearch->DescribeIndexFields(
      DomainName => 'MyDomainName',
      Deployed   => 1,                # OPTIONAL
      FieldNames => [
        'MyDynamicFieldName', ...     # min: 1, max: 64
      ],                              # OPTIONAL
    );

    # Results:
    my $IndexFields = $DescribeIndexFieldsResponse->IndexFields;

    # Returns a L<Paws::CloudSearch::DescribeIndexFieldsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearch/DescribeIndexFields>

=head1 ATTRIBUTES


=head2 Deployed => Bool

Whether to display the deployed configuration (C<true>) or include any
pending changes (C<false>). Defaults to C<false>.



=head2 B<REQUIRED> DomainName => Str

The name of the domain you want to describe.



=head2 FieldNames => ArrayRef[Str|Undef]

A list of the index fields you want to describe. If not specified,
information is returned for all configured index fields.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIndexFields in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

