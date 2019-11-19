# Generated from default/object.tt
package Paws::MQ::Tags;
  use Moo;
  use Types::Standard qw//;
  use Paws::MQ::Types qw/MQ___mapOf__string/;
  has Tags => (is => 'ro', isa => MQ___mapOf__string);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::MQ::__mapOf__string',
                           'type' => 'MQ___mapOf__string'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::Tags

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::Tags object:

  $service_obj->Method(Att1 => { Tags => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::Tags object:

  $result = $service_obj->Method(...);
  $result->Att1->Tags

=head1 DESCRIPTION

A map of the key-value pairs for the resource tag.

=head1 ATTRIBUTES


=head2 Tags => MQ___mapOf__string

  The key-value pair for the resource tag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

