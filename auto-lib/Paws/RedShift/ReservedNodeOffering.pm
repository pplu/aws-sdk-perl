# Generated from default/object.tt
package Paws::RedShift::ReservedNodeOffering;
  use Moo;
  use Types::Standard qw/Str Int Num ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_RecurringCharge/;
  has CurrencyCode => (is => 'ro', isa => Str);
  has Duration => (is => 'ro', isa => Int);
  has FixedPrice => (is => 'ro', isa => Num);
  has NodeType => (is => 'ro', isa => Str);
  has OfferingType => (is => 'ro', isa => Str);
  has RecurringCharges => (is => 'ro', isa => ArrayRef[RedShift_RecurringCharge]);
  has ReservedNodeOfferingId => (is => 'ro', isa => Str);
  has ReservedNodeOfferingType => (is => 'ro', isa => Str);
  has UsagePrice => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OfferingType' => {
                                   'type' => 'Str'
                                 },
               'ReservedNodeOfferingId' => {
                                             'type' => 'Str'
                                           },
               'NodeType' => {
                               'type' => 'Str'
                             },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 },
               'ReservedNodeOfferingType' => {
                                               'type' => 'Str'
                                             },
               'FixedPrice' => {
                                 'type' => 'Num'
                               },
               'RecurringCharges' => {
                                       'class' => 'Paws::RedShift::RecurringCharge',
                                       'type' => 'ArrayRef[RedShift_RecurringCharge]'
                                     },
               'Duration' => {
                               'type' => 'Int'
                             },
               'UsagePrice' => {
                                 'type' => 'Num'
                               }
             },
  'NameInRequest' => {
                       'RecurringCharges' => 'RecurringCharge'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ReservedNodeOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ReservedNodeOffering object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ReservedNodeOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

Describes a reserved node offering.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency code for the compute nodes offering.


=head2 Duration => Int

  The duration, in seconds, for which the offering will reserve the node.


=head2 FixedPrice => Num

  The upfront fixed charge you will pay to purchase the specific reserved
node offering.


=head2 NodeType => Str

  The node type offered by the reserved node offering.


=head2 OfferingType => Str

  The anticipated utilization of the reserved node, as defined in the
reserved node offering.


=head2 RecurringCharges => ArrayRef[RedShift_RecurringCharge]

  The charge to your account regardless of whether you are creating any
clusters using the node offering. Recurring charges are only in effect
for heavy-utilization reserved nodes.


=head2 ReservedNodeOfferingId => Str

  The offering identifier.


=head2 ReservedNodeOfferingType => Str

  


=head2 UsagePrice => Num

  The rate you are charged for each hour the cluster that is using the
offering is running.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

