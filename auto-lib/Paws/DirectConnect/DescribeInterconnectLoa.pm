# Generated from json/callargs_class.tt

package Paws::DirectConnect::DescribeInterconnectLoa;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw//;
  has InterconnectId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LoaContentType => (is => 'ro', isa => Str, predicate => 1);
  has ProviderName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeInterconnectLoa');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::DescribeInterconnectLoaResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InterconnectId' => {
                                     'type' => 'Str'
                                   },
               'LoaContentType' => {
                                     'type' => 'Str'
                                   },
               'ProviderName' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'InterconnectId' => 'interconnectId',
                       'LoaContentType' => 'loaContentType',
                       'ProviderName' => 'providerName'
                     },
  'IsRequired' => {
                    'InterconnectId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeInterconnectLoa - Arguments for method DescribeInterconnectLoa on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInterconnectLoa on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DescribeInterconnectLoa.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInterconnectLoa.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $DescribeInterconnectLoaResponse =
      $directconnect->DescribeInterconnectLoa(
      InterconnectId => 'MyInterconnectId',
      LoaContentType => 'application/pdf',    # OPTIONAL
      ProviderName   => 'MyProviderName',     # OPTIONAL
      );

    # Results:
    my $Loa = $DescribeInterconnectLoaResponse->Loa;

    # Returns a L<Paws::DirectConnect::DescribeInterconnectLoaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DescribeInterconnectLoa>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InterconnectId => Str

The ID of the interconnect.



=head2 LoaContentType => Str

The standard media type for the LOA-CFA document. The only supported
value is application/pdf.

Valid values are: C<"application/pdf">

=head2 ProviderName => Str

The name of the service provider who establishes connectivity on your
behalf. If you supply this parameter, the LOA-CFA lists the provider
name alongside your company name as the requester of the cross connect.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInterconnectLoa in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

