# Generated from default/object.tt
package Paws::Glue::Location;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Glue::Types qw/Glue_CodeGenNodeArg/;
  has DynamoDB => (is => 'ro', isa => ArrayRef[Glue_CodeGenNodeArg]);
  has Jdbc => (is => 'ro', isa => ArrayRef[Glue_CodeGenNodeArg]);
  has S3 => (is => 'ro', isa => ArrayRef[Glue_CodeGenNodeArg]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DynamoDB' => {
                               'class' => 'Paws::Glue::CodeGenNodeArg',
                               'type' => 'ArrayRef[Glue_CodeGenNodeArg]'
                             },
               'Jdbc' => {
                           'class' => 'Paws::Glue::CodeGenNodeArg',
                           'type' => 'ArrayRef[Glue_CodeGenNodeArg]'
                         },
               'S3' => {
                         'class' => 'Paws::Glue::CodeGenNodeArg',
                         'type' => 'ArrayRef[Glue_CodeGenNodeArg]'
                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Location object:

  $service_obj->Method(Att1 => { DynamoDB => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Location object:

  $result = $service_obj->Method(...);
  $result->Att1->DynamoDB

=head1 DESCRIPTION

The location of resources.

=head1 ATTRIBUTES


=head2 DynamoDB => ArrayRef[Glue_CodeGenNodeArg]

  An Amazon DynamoDB table location.


=head2 Jdbc => ArrayRef[Glue_CodeGenNodeArg]

  A JDBC location.


=head2 S3 => ArrayRef[Glue_CodeGenNodeArg]

  An Amazon Simple Storage Service (Amazon S3) location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

