package Paws::Glue::UserDefinedFunction;
  use Moose;
  has ClassName => (is => 'ro', isa => 'Str');
  has CreateTime => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str');
  has OwnerName => (is => 'ro', isa => 'Str');
  has OwnerType => (is => 'ro', isa => 'Str');
  has ResourceUris => (is => 'ro', isa => 'ArrayRef[Paws::Glue::ResourceUri]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UserDefinedFunction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::UserDefinedFunction object:

  $service_obj->Method(Att1 => { ClassName => $value, ..., ResourceUris => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::UserDefinedFunction object:

  $result = $service_obj->Method(...);
  $result->Att1->ClassName

=head1 DESCRIPTION

Represents the equivalent of a Hive user-defined function (C<UDF>)
definition.

=head1 ATTRIBUTES


=head2 ClassName => Str

  The Java class that contains the function code.


=head2 CreateTime => Str

  The time at which the function was created.


=head2 FunctionName => Str

  The name of the function.


=head2 OwnerName => Str

  The owner of the function.


=head2 OwnerType => Str

  The owner type.


=head2 ResourceUris => ArrayRef[L<Paws::Glue::ResourceUri>]

  The resource URIs for the function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

