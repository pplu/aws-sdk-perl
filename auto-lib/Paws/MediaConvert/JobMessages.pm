package Paws::MediaConvert::JobMessages;
  use Moose;
  has Info => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'info', traits => ['NameInRequest']);
  has Warning => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'warning', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::JobMessages

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::JobMessages object:

  $service_obj->Method(Att1 => { Info => $value, ..., Warning => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::JobMessages object:

  $result = $service_obj->Method(...);
  $result->Att1->Info

=head1 DESCRIPTION

Provides messages from the service about jobs that you have already
successfully submitted.

=head1 ATTRIBUTES


=head2 Info => ArrayRef[Str|Undef]

  List of messages that are informational only and don't indicate a
problem with your job.


=head2 Warning => ArrayRef[Str|Undef]

  List of messages that warn about conditions that might cause your job
not to run or to fail.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

