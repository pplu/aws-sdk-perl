package Paws::AppSync::PipelineConfig;
  use Moose;
  has Functions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'functions', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::PipelineConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::PipelineConfig object:

  $service_obj->Method(Att1 => { Functions => $value, ..., Functions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::PipelineConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Functions

=head1 DESCRIPTION

The pipeline configuration for a resolver of kind C<PIPELINE>.

=head1 ATTRIBUTES


=head2 Functions => ArrayRef[Str|Undef]

  A list of C<Function> objects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

