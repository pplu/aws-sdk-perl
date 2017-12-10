package Paws::OpsWorks::Recipes;
  use Moose;
  has Configure => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Deploy => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Setup => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Shutdown => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Undeploy => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::Recipes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::Recipes object:

  $service_obj->Method(Att1 => { Configure => $value, ..., Undeploy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::Recipes object:

  $result = $service_obj->Method(...);
  $result->Att1->Configure

=head1 DESCRIPTION

AWS OpsWorks Stacks supports five lifecycle events: B<setup>,
B<configuration>, B<deploy>, B<undeploy>, and B<shutdown>. For each
layer, AWS OpsWorks Stacks runs a set of standard recipes for each
event. In addition, you can provide custom recipes for any or all
layers and events. AWS OpsWorks Stacks runs custom event recipes after
the standard recipes. C<LayerCustomRecipes> specifies the custom
recipes for a particular layer to be run in response to each of the
five events.

To specify a recipe, use the cookbook's directory name in the
repository followed by two colons and the recipe name, which is the
recipe's file name without the .rb extension. For example:
phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's
phpapp2 folder.

=head1 ATTRIBUTES


=head2 Configure => ArrayRef[Str|Undef]

  An array of custom recipe names to be run following a C<configure>
event.


=head2 Deploy => ArrayRef[Str|Undef]

  An array of custom recipe names to be run following a C<deploy> event.


=head2 Setup => ArrayRef[Str|Undef]

  An array of custom recipe names to be run following a C<setup> event.


=head2 Shutdown => ArrayRef[Str|Undef]

  An array of custom recipe names to be run following a C<shutdown>
event.


=head2 Undeploy => ArrayRef[Str|Undef]

  An array of custom recipe names to be run following a C<undeploy>
event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

