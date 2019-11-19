# Generated from default/object.tt
package Paws::Macie::FailedS3Resource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Macie::Types qw/Macie_S3Resource/;
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has FailedItem => (is => 'ro', isa => Macie_S3Resource);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailedItem' => {
                                 'class' => 'Paws::Macie::S3Resource',
                                 'type' => 'Macie_S3Resource'
                               },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'ErrorCode' => 'errorCode',
                       'ErrorMessage' => 'errorMessage',
                       'FailedItem' => 'failedItem'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie::FailedS3Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie::FailedS3Resource object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., FailedItem => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie::FailedS3Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Includes details about the failed S3 resources.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The status code of a failed item.


=head2 ErrorMessage => Str

  The error message of a failed item.


=head2 FailedItem => Macie_S3Resource

  The failed S3 resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

