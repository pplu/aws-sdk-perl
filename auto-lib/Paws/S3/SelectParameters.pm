package Paws::S3::SelectParameters;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_InputSerialization S3_OutputSerialization/;
  has Expression => (is => 'ro', isa => Str, required => 1);
  has ExpressionType => (is => 'ro', isa => Str, required => 1);
  has InputSerialization => (is => 'ro', isa => S3_InputSerialization, required => 1);
  has OutputSerialization => (is => 'ro', isa => S3_OutputSerialization, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Expression' => {
                                 'type' => 'Str'
                               },
               'OutputSerialization' => {
                                          'class' => 'Paws::S3::OutputSerialization',
                                          'type' => 'S3_OutputSerialization'
                                        },
               'InputSerialization' => {
                                         'class' => 'Paws::S3::InputSerialization',
                                         'type' => 'S3_InputSerialization'
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

Paws::S3::SelectParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::SelectParameters object:

  $service_obj->Method(Att1 => { Expression => $value, ..., OutputSerialization => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::SelectParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Expression

=head1 DESCRIPTION

Describes the parameters for Select job types.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Expression => Str

  The expression that is used to query the object.


=head2 B<REQUIRED> ExpressionType => Str

  The type of the provided expression (e.g., SQL).


=head2 B<REQUIRED> InputSerialization => S3_InputSerialization

  Describes the serialization format of the object.


=head2 B<REQUIRED> OutputSerialization => S3_OutputSerialization

  Describes how the results of the Select job are serialized.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

