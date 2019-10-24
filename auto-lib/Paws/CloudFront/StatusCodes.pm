# Generated from default/object.tt
package Paws::CloudFront::StatusCodes;
  use Moo;
  use Types::Standard qw/ArrayRef Int/;
  use Paws::CloudFront::Types qw//;
  has Items => (is => 'ro', isa => ArrayRef[Int], required => 1);
  has Quantity => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Items' => {
                            'type' => 'ArrayRef[Int]'
                          },
               'Quantity' => {
                               'type' => 'Int'
                             }
             },
  'NameInRequest' => {
                       'Items' => 'StatusCode'
                     },
  'IsRequired' => {
                    'Items' => 1,
                    'Quantity' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::StatusCodes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::StatusCodes object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::StatusCodes object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A complex data type for the status codes that you specify that, when
returned by a primary origin, trigger CloudFront to failover to a
second origin.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[Int]

  The items (status codes) for an origin group.


=head2 B<REQUIRED> Quantity => Int

  The number of status codes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

