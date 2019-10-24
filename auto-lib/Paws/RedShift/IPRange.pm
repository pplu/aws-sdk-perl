# Generated from default/object.tt
package Paws::RedShift::IPRange;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_Tag/;
  has CIDRIP => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[RedShift_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Tags' => {
                           'class' => 'Paws::RedShift::Tag',
                           'type' => 'ArrayRef[RedShift_Tag]'
                         },
               'CIDRIP' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Tags' => 'Tag'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::IPRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::IPRange object:

  $service_obj->Method(Att1 => { CIDRIP => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::IPRange object:

  $result = $service_obj->Method(...);
  $result->Att1->CIDRIP

=head1 DESCRIPTION

Describes an IP range used in a security group.

=head1 ATTRIBUTES


=head2 CIDRIP => Str

  The IP range in Classless Inter-Domain Routing (CIDR) notation.


=head2 Status => Str

  The status of the IP range, for example, "authorized".


=head2 Tags => ArrayRef[RedShift_Tag]

  The list of tags for the IP range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

