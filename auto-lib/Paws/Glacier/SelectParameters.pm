# Generated from default/object.tt
package Paws::Glacier::SelectParameters;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw/Glacier_OutputSerialization Glacier_InputSerialization/;
  has Expression => (is => 'ro', isa => Str);
  has ExpressionType => (is => 'ro', isa => Str);
  has InputSerialization => (is => 'ro', isa => Glacier_InputSerialization);
  has OutputSerialization => (is => 'ro', isa => Glacier_OutputSerialization);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Expression' => {
                                 'type' => 'Str'
                               },
               'OutputSerialization' => {
                                          'class' => 'Paws::Glacier::OutputSerialization',
                                          'type' => 'Glacier_OutputSerialization'
                                        },
               'InputSerialization' => {
                                         'class' => 'Paws::Glacier::InputSerialization',
                                         'type' => 'Glacier_InputSerialization'
                                       },
               'ExpressionType' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::SelectParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::SelectParameters object:

  $service_obj->Method(Att1 => { Expression => $value, ..., OutputSerialization => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::SelectParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Expression

=head1 DESCRIPTION

Contains information about the parameters used for a select.

=head1 ATTRIBUTES


=head2 Expression => Str

  The expression that is used to select the object.


=head2 ExpressionType => Str

  The type of the provided expression, for example C<SQL>.


=head2 InputSerialization => Glacier_InputSerialization

  Describes the serialization format of the object.


=head2 OutputSerialization => Glacier_OutputSerialization

  Describes how the results of the select job are serialized.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

