
package Paws::Route53::ListReusableDelegationSetsResponse;
  use Moose;
  has DelegationSets => (is => 'ro', isa => 'ArrayRef[Paws::Route53::DelegationSet]', traits => ['Unwrapped'], xmlname => 'DelegationSet', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53:: - Arguments for method  on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method  on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method .

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to .

As an example:

  $service_obj->(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DelegationSets => ArrayRef[L<Paws::Route53::DelegationSet>]

A complex type that contains one C<DelegationSet> element for each
reusable delegation set that was created by the current AWS account.



=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether there are more reusable delegation sets
to be listed. If the response is truncated, you can get the next group
of C<maxitems> reusable delegation sets by calling
C<ListReusableDelegationSets> again and specifying the value of the
C<NextMarker> element in the C<marker> parameter.



=head2 Marker => Str

For the second and subsequent calls to C<ListReusableDelegationSets>,
C<Marker> is the value that you specified for the marker parameter in
the request that produced the current response.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<maxitems> parameter in the call
to C<ListReusableDelegationSets> that produced the current response.



=head2 NextMarker => Str

If C<IsTruncated> is C<true>, the value of C<NextMarker> identifies the
first reusable delegation set in the next group of C<maxitems> reusable
delegation sets. Call C<ListReusableDelegationSets> again and specify
the value of C<NextMarker> in the C<marker> parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method  in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

