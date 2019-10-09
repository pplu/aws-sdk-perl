package Paws::S3::CORSRule;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Int/;
  use Paws::S3::Types qw//;
  has AllowedHeaders => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has AllowedMethods => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has AllowedOrigins => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has ExposeHeaders => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has MaxAgeSeconds => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxAgeSeconds' => {
                                    'type' => 'Int'
                                  },
               'ExposeHeaders' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'AllowedHeaders' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'AllowedOrigins' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'AllowedMethods' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'NameInRequest' => {
                       'ExposeHeaders' => 'ExposeHeader',
                       'AllowedHeaders' => 'AllowedHeader',
                       'AllowedOrigins' => 'AllowedOrigin',
                       'AllowedMethods' => 'AllowedMethod'
                     }
}
;
    return $Params_map;
  }


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

Specifies a cross-origin access rule for an Amazon S3 bucket.

=head1 ATTRIBUTES


=head2 AllowedHeaders => ArrayRef[Str|Undef]

  Headers that are specified in the C<Access-Control-Request-Headers>
header. These headers are allowed in a preflight OPTIONS request. In
response to any preflight OPTIONS request, Amazon S3 returns any
requested headers that are allowed.


=head2 B<REQUIRED> AllowedMethods => ArrayRef[Str|Undef]

  An HTTP method that you allow the origin to execute. Valid values are
C<GET>, C<PUT>, C<HEAD>, C<POST>, and C<DELETE>.


=head2 B<REQUIRED> AllowedOrigins => ArrayRef[Str|Undef]

  One or more origins you want customers to be able to access the bucket
from.


=head2 ExposeHeaders => ArrayRef[Str|Undef]

  One or more headers in the response that you want customers to be able
to access from their applications (for example, from a JavaScript
C<XMLHttpRequest> object).


=head2 MaxAgeSeconds => Int

  The time in seconds that your browser is to cache the preflight
response for the specified resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

