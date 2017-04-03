package Paws::ResourceTagging::FailureInfo;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::FailureInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceTagging::FailureInfo object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., StatusCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceTagging::FailureInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Details of the common errors that all actions return.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The code of the common error. Valid values include
C<InternalServiceException>, C<InvalidParameterException>, and any
valid error code returned by the AWS service that hosts the resource
that you want to tag.


=head2 ErrorMessage => Str

  The message of the common error.


=head2 StatusCode => Int

  The HTTP status code of the common error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

