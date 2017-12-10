
package Paws::DirectConnect::DescribeConnectionLoa;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has LoaContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loaContentType' );
  has ProviderName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'providerName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectionLoa');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DescribeConnectionLoaResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeConnectionLoa - Arguments for method DescribeConnectionLoa on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConnectionLoa on the 
AWS Direct Connect service. Use the attributes of this class
as arguments to method DescribeConnectionLoa.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConnectionLoa.

As an example:

  $service_obj->DescribeConnectionLoa(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str





=head2 LoaContentType => Str



Valid values are: C<"application/pdf">

=head2 ProviderName => Str

The name of the APN partner or service provider who establishes
connectivity on your behalf. If you supply this parameter, the LOA-CFA
lists the provider name alongside your company name as the requester of
the cross connect.

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConnectionLoa in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

