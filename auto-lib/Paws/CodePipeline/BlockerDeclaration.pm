package Paws::CodePipeline::BlockerDeclaration;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::BlockerDeclaration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::BlockerDeclaration object:

  $service_obj->Method(Att1 => { Name => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::BlockerDeclaration object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Reserved for future use.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  Reserved for future use.


=head2 B<REQUIRED> Type => Str

  Reserved for future use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

