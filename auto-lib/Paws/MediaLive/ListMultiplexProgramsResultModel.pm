package Paws::MediaLive::ListMultiplexProgramsResultModel;
  use Moose;
  has MultiplexPrograms => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::MultiplexProgramSummary]', request_name => 'multiplexPrograms', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListMultiplexProgramsResultModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ListMultiplexProgramsResultModel object:

  $service_obj->Method(Att1 => { MultiplexPrograms => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ListMultiplexProgramsResultModel object:

  $result = $service_obj->Method(...);
  $result->Att1->MultiplexPrograms

=head1 DESCRIPTION

Placeholder documentation for ListMultiplexProgramsResultModel

=head1 ATTRIBUTES


=head2 MultiplexPrograms => ArrayRef[L<Paws::MediaLive::MultiplexProgramSummary>]

  List of multiplex programs.


=head2 NextToken => Str

  Token for the next ListMultiplexProgram request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

