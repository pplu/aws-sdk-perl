
package Paws::Route53::ListChangeBatchesByHostedZoneResponse;
  use Moose;
  has ChangeBatchRecords => (is => 'ro', isa => 'ArrayRef[Paws::Route53::ChangeBatchRecord]', traits => ['Unwrapped'], xmlname => 'ChangeBatchRecord', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str', required => 1);
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


=head2 B<REQUIRED> ChangeBatchRecords => ArrayRef[L<Paws::Route53::ChangeBatchRecord>]

The change batches within the given hosted zone and time period.



=head2 IsTruncated => Bool

A flag that indicates if there are more change batches to list.



=head2 B<REQUIRED> Marker => Str

The page marker.



=head2 B<REQUIRED> MaxItems => Str

The maximum number of items on a page.



=head2 NextMarker => Str

The next page marker.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method  in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

