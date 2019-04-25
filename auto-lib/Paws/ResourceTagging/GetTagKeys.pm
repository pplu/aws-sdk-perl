
package Paws::ResourceTagging::GetTagKeys;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTagKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceTagging::GetTagKeysOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetTagKeys - Arguments for method GetTagKeys on L<Paws::ResourceTagging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTagKeys on the
L<AWS Resource Groups Tagging API|Paws::ResourceTagging> service. Use the attributes of this class
as arguments to method GetTagKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTagKeys.

=head1 SYNOPSIS

    my $tagging = Paws->service('ResourceTagging');
    my $GetTagKeysOutput = $tagging->GetTagKeys(
      PaginationToken => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $PaginationToken = $GetTagKeysOutput->PaginationToken;
    my $TagKeys         = $GetTagKeysOutput->TagKeys;

    # Returns a L<Paws::ResourceTagging::GetTagKeysOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tagging/GetTagKeys>

=head1 ATTRIBUTES


=head2 PaginationToken => Str

A string that indicates that additional data is available. Leave this
value empty for your initial request. If the response includes a
PaginationToken, use that string for this value to request an
additional page of data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTagKeys in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

