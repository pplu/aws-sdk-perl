package Paws::Greengrass::FunctionDefaultExecutionConfig;
  use Moose;
  has IsolationMode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::FunctionDefaultExecutionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::FunctionDefaultExecutionConfig object:

  $service_obj->Method(Att1 => { IsolationMode => $value, ..., IsolationMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::FunctionDefaultExecutionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->IsolationMode

=head1 DESCRIPTION

Configuration that defines the default containerization used for when
running Lambda functions in the group. Individual Lambda functions can
be override this setting.

=head1 ATTRIBUTES


=head2 IsolationMode => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

