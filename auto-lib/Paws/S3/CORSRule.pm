package Paws::S3::CORSRule;
  use Moose;
  has AllowedHeaders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'AllowedHeader', traits => ['NameInRequest']);
  has AllowedMethods => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'AllowedMethod', traits => ['NameInRequest'], required => 1);
  has AllowedOrigins => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'AllowedOrigin', traits => ['NameInRequest'], required => 1);
  has ExposeHeaders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ExposeHeader', traits => ['NameInRequest']);
  has MaxAgeSeconds => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CORSRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::CORSRule object:

  $service_obj->Method(Att1 => { AllowedHeaders => $value, ..., MaxAgeSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::CORSRule object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedHeaders

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllowedHeaders => ArrayRef[Str|Undef]

  Specifies which headers are allowed in a pre-flight OPTIONS request.


=head2 B<REQUIRED> AllowedMethods => ArrayRef[Str|Undef]

  Identifies HTTP methods that the domain/origin specified in the rule is
allowed to execute.


=head2 B<REQUIRED> AllowedOrigins => ArrayRef[Str|Undef]

  One or more origins you want customers to be able to access the bucket
from.


=head2 ExposeHeaders => ArrayRef[Str|Undef]

  One or more headers in the response that you want customers to be able
to access from their applications (for example, from a JavaScript
XMLHttpRequest object).


=head2 MaxAgeSeconds => Int

  The time in seconds that your browser is to cache the preflight
response for the specified resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

