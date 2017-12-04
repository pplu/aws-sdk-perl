
package Paws::Route53::ChangeResourceRecordSets;
  use Moose;
  has ChangeBatch => (is => 'ro', isa => 'Paws::Route53::ChangeBatch', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeResourceRecordSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}/rrset/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ChangeResourceRecordSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ChangeResourceRecordSets - Arguments for method ChangeResourceRecordSets on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangeResourceRecordSets on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method ChangeResourceRecordSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangeResourceRecordSets.

As an example:

  $service_obj->ChangeResourceRecordSets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeBatch => L<Paws::Route53::ChangeBatch>

A complex type that contains an optional comment and the C<Changes>
element.



=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that contains the resource record sets that
you want to change.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangeResourceRecordSets in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

