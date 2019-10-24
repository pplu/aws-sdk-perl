# Generated from default/object.tt
package Paws::AppStream::LastReportGenerationExecutionError;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw//;
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'ErrorMessage' => {
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

Paws::AppStream::LastReportGenerationExecutionError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::LastReportGenerationExecutionError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., ErrorMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::LastReportGenerationExecutionError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Describes the error that is returned when a usage report can't be
generated.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code for the error that is returned when a usage report can't
be generated.


=head2 ErrorMessage => Str

  The error message for the error that is returned when a usage report
can't be generated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

